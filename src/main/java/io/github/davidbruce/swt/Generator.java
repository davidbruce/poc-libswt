package io.github.davidbruce.swt;

import com.github.javaparser.ParserConfiguration;
import com.github.javaparser.ast.body.MethodDeclaration;
import com.github.javaparser.ast.body.Parameter;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.symbolsolver.JavaSymbolSolver;
import com.github.javaparser.symbolsolver.resolution.typesolvers.CombinedTypeSolver;
import com.github.javaparser.symbolsolver.resolution.typesolvers.JavaParserTypeSolver;
import com.github.javaparser.symbolsolver.resolution.typesolvers.ReflectionTypeSolver;
import com.github.javaparser.utils.SourceRoot;
import com.google.common.base.CaseFormat;
import com.squareup.javapoet.AnnotationSpec;
import com.squareup.javapoet.ClassName;
import com.squareup.javapoet.CodeBlock;
import com.squareup.javapoet.FieldSpec;
import com.squareup.javapoet.JavaFile;
import com.squareup.javapoet.MethodSpec;
import com.squareup.javapoet.TypeName;
import com.squareup.javapoet.TypeSpec;

import java.io.IOException;
import java.nio.file.Path;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import javax.lang.model.element.Modifier;

import org.graalvm.nativeimage.IsolateThread;
import org.graalvm.nativeimage.ObjectHandle;
import org.graalvm.nativeimage.ObjectHandles;
import org.graalvm.nativeimage.c.function.CEntryPoint;
import org.graalvm.nativeimage.c.type.CCharPointer;
import org.graalvm.nativeimage.c.type.CCharPointerPointer;

public class Generator {
    public static void main(String[] args) throws IOException {
        //TODO: Import parent class methods as well
        var osPath = Path.of("./eclipse.platform.swt/bundles/org.eclipse.swt/Eclipse SWT/cocoa");
        var commonPath = Path.of("./eclipse.platform.swt/bundles/org.eclipse.swt/Eclipse SWT/common");
        var tooltipPath = Path.of("./eclipse.platform.swt/bundles/org.eclipse.swt/Eclipse SWT/emulated/tooltip");

        var typeSolver = new CombinedTypeSolver();
        typeSolver.add(new ReflectionTypeSolver(false));
        typeSolver.add(new JavaParserTypeSolver(osPath));
        typeSolver.add(new JavaParserTypeSolver(commonPath));
        typeSolver.add(new JavaParserTypeSolver(tooltipPath));

        var config = new ParserConfiguration()
                .setLanguageLevel(ParserConfiguration.LanguageLevel.JAVA_15)
                .setSymbolResolver(new JavaSymbolSolver(typeSolver));

        var root = new SourceRoot(osPath, config);
        root.tryToParse();
        var valid = Arrays.asList("Display", "Shell", "Button");
        root.getCompilationUnits().stream().filter(unit -> valid.contains(unit.getPrimaryType().get().getNameAsString())).forEach(source -> {
            var type = source.getPrimaryType().get();
            var typeName = type.getNameAsString();

            var classSpec = TypeSpec.classBuilder(typeName + "Wrapper")
                    .addModifiers(Modifier.PUBLIC);
            var handlesField = FieldSpec.builder(ObjectHandles.class, "handles")
                    .addModifiers(Modifier.STATIC)
                    .initializer("ObjectHandles.getGlobal()")
                    .build();

            classSpec.addField(handlesField);
            //TODO this is a temporary solution for overloading, refactor to use variadic arguments
            var centryPoints = new HashSet<String>();
            type.getMethods()
                    .stream()
                    .filter(method -> method.isPublic() && !method.isStatic() && !method.isGeneric())
                    .forEach(method -> {
                        var targetObject = upperCamelToLowerCamelCase(typeName);
                        var cName = MessageFormat.format("\"{0}_{1}\"",
                                        targetObject.toLowerCase(),
                                        CaseFormat.LOWER_CAMEL.to(CaseFormat.LOWER_UNDERSCORE, method.getNameAsString()));

                        var i = 2;
                        while (centryPoints.contains(cName)) cName = MessageFormat.format("\"{0}_{1}_{2}\"",
                                targetObject.toLowerCase(),
                                CaseFormat.LOWER_CAMEL.to(CaseFormat.LOWER_UNDERSCORE, method.getNameAsString()),
                                i++);
                        var centryPoint = AnnotationSpec.builder(CEntryPoint.class)
                                .addMember("name", cName)
                                .build();
                        centryPoints.add(cName);
                        targetObject = targetObject + "TargetRed";


                        var typeHandler = generateHandlerInterface(type.getNameAsString());
                        var methodSpec = MethodSpec.methodBuilder(method.getNameAsString())
                                .addAnnotation(centryPoint)
                                .addModifiers(Modifier.PUBLIC, Modifier.STATIC)
                                .addParameter(IsolateThread.class, "thread")
                                .addParameter(typeHandler, targetObject + "Ref");

                        //set return type
                        String returnWrapper = returnStatement(method, methodSpec);

                        //Get target object from global handles
                        var body = CodeBlock.builder();
                        body.addStatement("var $L = handles.<$T>get($L)",
                                targetObject,
                                ClassName.get(source.getPackageDeclaration().get().getNameAsString(), typeName),
                                targetObject + "Ref");

                        //set parameters
                        ArrayList<String> returnParams = methodParams(method, targetObject, methodSpec, body);

                        //call method on object with parameters from global handles
                        body.add(returnWrapper,
                                targetObject,
                                method.getNameAsString(),
                                returnParams.stream().collect(Collectors.joining(", ")
                        ));

                        methodSpec.addCode(body.build());
                        classSpec.addMethod(methodSpec.build());
                    });

            var javaFile = JavaFile.builder("org.eclipse.graalvm.swt", classSpec.build())
                    .addStaticImport(ClassName.get("org.graalvm.nativeimage.c.type", "CTypeConversion"), "*")
                    .build();

            try {
                javaFile.writeTo(Path.of("./gen"));
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        });
    }

    private static ArrayList<String> methodParams(MethodDeclaration method, String targetObject, MethodSpec.Builder methodSpec, CodeBlock.Builder body) {
        var returnParams = new ArrayList<String>();
        method.getParameters().forEach(parameter -> {
            if (parameter.getTypeAsString().equals("String")) {
                methodSpec.addParameter(CCharPointer.class, parameter.getNameAsString());
                returnParams.add(MessageFormat.format("toJavaString({0})", parameter.getNameAsString()));
            } else if (parameter.getTypeAsString().equals("String[]"))  {
                var param = parameter.getNameAsString() + "PtrPtr";
                methodSpec.addParameter(CCharPointerPointer.class, param);
                var lengthParam = parameter.getNameAsString() + "Length";
                methodSpec.addParameter(int.class, lengthParam);

                body.addStatement("var $L = new String[$L]", parameter.getNameAsString(), lengthParam);
                body.beginControlFlow("for (int i = 0; i < $L; i++)", lengthParam);
                body.addStatement("$L[i] = toJavaString($L.read(i))", parameter.getNameAsString(), param);
                body.endControlFlow();

                returnParams.add(parameter.getNameAsString());
            } else if (parameter.getType().isPrimitiveType()) {
                methodSpec.addParameter(ClassName.get("", parameter.getTypeAsString()), parameter.getNameAsString());
                returnParams.add(parameter.getNameAsString());
            } else {
                javaClassParamHandler(targetObject, methodSpec, body, returnParams, parameter);
            }
        });
        return returnParams;
    }

    private static void javaClassParamHandler(String targetObject, MethodSpec.Builder methodSpec, CodeBlock.Builder body, ArrayList<String> returnParams, Parameter parameter) {
        var clazz = ClassName.get(ObjectHandle.class);
        if (!parameter.getTypeAsString().equals("Object")) {
            clazz = generateHandlerInterface(parameter.getTypeAsString());
        }

        methodSpec.addParameter(clazz, parameter.getNameAsString() + "Ref");

        System.out.println(targetObject + ": " + parameter.getName() + ": " + parameter.getTypeAsString());
        var statementArgs = new ArrayList<Object>();
        statementArgs.add(parameter.getNameAsString());
        var types = new ArrayList<String>();

        populateStatementArgs(parameter.getType(), statementArgs, types);

        statementArgs.add(parameter.getNameAsString() + "Ref");
        //convert ObjectHandle to real type from global handles
        body.addStatement(MessageFormat.format("var $L = handles.<{0}>get($L)", types.stream().collect(Collectors.joining(""))),
                statementArgs.toArray());


        returnParams.add(parameter.getNameAsString());
    }

    private static ClassName generateHandlerInterface(String toGen) {
        ClassName clazz;
        var typeName = toGen + "Handler";
        if (typeName.contains("[]")) typeName = typeName.replace("[]", "Array");
        if (typeName.contains("<")) typeName = typeName.replaceAll("[<>]", "");

        var type = TypeSpec.interfaceBuilder(typeName)
                .addModifiers(Modifier.PUBLIC)
                .addSuperinterface(ObjectHandle.class)
                .build();

        var javaFile = JavaFile.builder("org.eclipse.graalvm.swt.handlers", type).build();
        try {
            javaFile.writeTo(Path.of("./gen"));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        clazz = ClassName.get("org.eclipse.graalvm.swt.handlers", type.name);
        return clazz;
    }

    private static String returnStatement(MethodDeclaration method, MethodSpec.Builder methodSpec) {
        var returnWrapper = "return $L.$L($L);";
        if (method.getTypeAsString().equals("boolean")) {
            returnWrapper = "return toCBoolean($L.$L($L));";
            methodSpec.returns(TypeName.BYTE);
        } else if (method.getTypeAsString().equals("void")) {
            returnWrapper = "$L.$L($L);";
            methodSpec.returns(TypeName.VOID);
        } else if (method.getTypeAsString().equals("String")) {
            returnWrapper = "try (var result = toCString($L.$L($L))) { return result.get(); }";
            methodSpec.returns(CCharPointer.class);
        } else if (method.getTypeAsString().equals("String[]")) {
            returnWrapper = "try (var result = toCStrings($L.$L($L))) { return result.get(); }";
            methodSpec.returns(CCharPointerPointer.class);
        } else if (method.getType().isPrimitiveType()) {
            methodSpec.returns(ClassName.get("", method.getTypeAsString()));
        } else {
            returnWrapper = "return handles.create($L.$L($L));";
            methodSpec.returns(ObjectHandle.class);
        }
        return returnWrapper;
    }

    private static void populateStatementArgs(Type type, ArrayList<Object> statementArgs, ArrayList<String> types) {
        //TODO Deal with multi-dimensional arrays
        if (type.isArrayType()) {
            types.add("$T[]");
        } else {
            types.add("$T");
        }
        if (!type.getElementType().isPrimitiveType()) {
            try {
                if (type.getElementType().asClassOrInterfaceType().getTypeArguments().isEmpty()) {
                    statementArgs.add(Class.forName(type.getElementType().resolve().describe()));
                } else {
                    //this needs to be a loop
                    var typeCopy = type.clone().asClassOrInterfaceType();
                    typeCopy.setParentNode(type.getParentNode().get());
                    typeCopy.removeTypeArguments();
                    statementArgs.add(Class.forName(typeCopy.resolve().describe()));
                    var typeArgumentsOptional = type.asClassOrInterfaceType().getTypeArguments();
                    if (typeArgumentsOptional.isPresent()) {
                        var typeArguments = typeArgumentsOptional.get();
                        var argumentsList = new ArrayList<String>();
                        typeArguments.stream().forEach(typeArgument -> populateStatementArgs(typeArgument, statementArgs, argumentsList));
                        types.add(MessageFormat.format("<{0}>", argumentsList.stream().collect(Collectors.joining(","))));
                    }
                }
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        } else {
            statementArgs.add(ClassName.get("", type.getElementType().asString()));
        }
    }

    private static String upperCamelToLowerCamelCase(String input) {
        String pattern = "([A-Z]+.)";
        Pattern r = Pattern.compile(pattern);

        Matcher m = r.matcher(input);
        var result = input;
        m.find();
        if (m.group().equals(input)) {
            result = result.toLowerCase();
        } else {
            if (m.group().length() > 2) {
                var start = m.group().substring(0, m.group().length() - 2);
                var middle = m.group().substring(m.group().length() - 2, m.group().length());
                var end = result.split(m.group())[1];
                result = start.toLowerCase() + middle + end;
            } else {
                result = m.group().toLowerCase() + result.split(m.group())[1];
            }
        }
        return result;
    }
}