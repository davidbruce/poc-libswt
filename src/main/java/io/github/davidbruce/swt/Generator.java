package io.github.davidbruce.swt;

import com.github.javaparser.ParserConfiguration;
import com.github.javaparser.ast.CompilationUnit;
import com.github.javaparser.ast.body.ConstructorDeclaration;
import com.github.javaparser.ast.body.FieldDeclaration;
import com.github.javaparser.ast.body.MethodDeclaration;
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
    private enum FieldMethodType { GETTER, SETTER }
    public static void main(String[] args) throws IOException {
        //TODO: Import parent class methods as well
        //TODO: Look into CFunctionPointer for supporting callbacks
        var osPath = Path.of("./eclipse.platform.swt/bundles/org.eclipse.swt/Eclipse SWT/cocoa");
        var commonPath = Path.of("./eclipse.platform.swt/bundles/org.eclipse.swt/Eclipse SWT/common");
        var commonLayout = Path.of("./eclipse.platform.swt/bundles/org.eclipse.swt/Eclipse SWT/common/org/eclipse/swt/layout");
        var tooltipPath = Path.of("./eclipse.platform.swt/bundles/org.eclipse.swt/Eclipse SWT/emulated/tooltip");

        var typeSolver = new CombinedTypeSolver();
        typeSolver.add(new ReflectionTypeSolver(false));
        typeSolver.add(new JavaParserTypeSolver(osPath));
        typeSolver.add(new JavaParserTypeSolver(commonPath));
        typeSolver.add(new JavaParserTypeSolver(tooltipPath));

        var config = new ParserConfiguration()
                .setLanguageLevel(ParserConfiguration.LanguageLevel.JAVA_15)
                .setSymbolResolver(new JavaSymbolSolver(typeSolver));

        processPath(osPath, config);
        processPath(commonLayout, config);
    }

    private static void processPath(Path osPath, ParserConfiguration config) throws IOException {
        var root = new SourceRoot(osPath, config);
        root.tryToParse();
        root.getCompilationUnits().stream()
                .filter(source -> !source.getPrimaryType().get().asClassOrInterfaceDeclaration().isInterface())
                .forEach(source -> {
            var type = source.getPrimaryType().get();
            var typeName = type.getNameAsString();

            System.out.println("Generating Wrapper For: " +  typeName);
            var classSpec = TypeSpec.classBuilder(typeName + "Wrapper")
                    .addModifiers(Modifier.PUBLIC);
            var handlesField = FieldSpec.builder(ObjectHandles.class, "handles")
                    .addModifiers(Modifier.STATIC)
                    .initializer("ObjectHandles.getGlobal()")
                    .build();

            classSpec.addField(handlesField);


            if (!type.asClassOrInterfaceDeclaration().isAbstract()) {
                System.out.println("Wrapping Constructors");
                var constructorCEntries = new HashSet<String>();
                type.getConstructors()
                        .stream()
                        .filter(ConstructorDeclaration::isPublic)
                        .forEach(constructor -> {
                            var methodSpec = wrapConstructors(source, typeName, constructorCEntries, constructor);
                            classSpec.addMethod(methodSpec.build());
                        });
            }

            //TODO: process static fields
            //process non-static fields
            System.out.println("Wrapping Fields");
            type.getFields()
                    .stream()
                    .filter(field -> field.isPublic() && !field.isStatic())
                    .forEach(field -> {
                        try {
                            MethodSpec.Builder getter = wrapFields(source, typeName, field, FieldMethodType.GETTER);
                            classSpec.addMethod(getter.build());
                            MethodSpec.Builder setter = wrapFields(source, typeName, field, FieldMethodType.SETTER);
                            classSpec.addMethod(setter.build());
                        } catch (ClassNotFoundException e) {
                            throw new RuntimeException(e);
                        }
                    });


            System.out.println("Wrapping Methods");
            //TODO this is a temporary solution for overloading, refactor to use variadic arguments
            var methodCEntries = new HashSet<String>();
            type.getMethods()
                    .stream()
                    .filter(method -> method.isPublic() && !method.isStatic() && !method.isGeneric())
                    .forEach(method -> {
                        MethodSpec.Builder methodSpec = wrapMethods(source, typeName, methodCEntries, method);
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

    private static MethodSpec.Builder wrapConstructors(CompilationUnit source, String typeName, HashSet<String> centryPoints, ConstructorDeclaration constructor) {
        var targetObject = upperCamelToLowerCamelCase(typeName);
        var targetObjectParam = "_" + targetObject + "Ref";
        var cName = MessageFormat.format("\"new_{0}\"",
                targetObject.toLowerCase());

        var i = 2;
        while (centryPoints.contains(cName)) cName = MessageFormat.format("\"new_{0}_{1}\"",
                targetObject.toLowerCase(),
                i++);
        var centryPoint = AnnotationSpec.builder(CEntryPoint.class)
                .addMember("name", cName)
                .build();
        centryPoints.add(cName);

        targetObject = "_" + targetObject;
        var methodSpec = MethodSpec.methodBuilder("create" + typeName)
                .addAnnotation(centryPoint)
                .addModifiers(Modifier.PUBLIC, Modifier.STATIC)
                .addParameter(IsolateThread.class, "_thread")
                .returns(ObjectHandle.class);

        //Get target object from global handles
        var body = CodeBlock.builder();
        //set parameters
        var returnParams = new ArrayList<String>();

        constructor.getParameters().forEach(parameter -> {
            paramHandler(methodSpec, body, returnParams, parameter.getType(), parameter.getNameAsString());
        });

        //call method on object with parameters from global handles
        body.addStatement("return handles.create(new $T($L))",
                ClassName.get(source.getPackageDeclaration().get().getNameAsString(), typeName),
                returnParams.stream().collect(Collectors.joining(", "))
        );

        methodSpec.addCode(body.build());
        return methodSpec;
    }

    private static MethodSpec.Builder wrapFields(CompilationUnit source, String typeName, FieldDeclaration field, FieldMethodType methodType) throws ClassNotFoundException {
        var targetObject = upperCamelToLowerCamelCase(typeName);
        var targetObjectParam = "_" + targetObject + "Ref";
        var fieldName = field.getVariables().get(0).getNameAsString();
        var fieldType = field.getVariables().get(0).getType();
        var cName = MessageFormat.format("\"{0}_{1}\"",
                targetObject.toLowerCase(),
                CaseFormat.LOWER_CAMEL.to(CaseFormat.LOWER_UNDERSCORE,
                        methodType.equals(FieldMethodType.GETTER)
                                ? fieldName
                                : "assign_" + fieldName));

        var centryPoint = AnnotationSpec.builder(CEntryPoint.class)
                .addMember("name", cName)
                .build();

        targetObject = "_" + targetObject;
        var typeHandler = generateHandlerInterface(typeName);
        var methodSpec = MethodSpec.methodBuilder(
                        methodType.equals(FieldMethodType.GETTER)
                                ? fieldName
                                : "assign" + CaseFormat.LOWER_CAMEL.to(CaseFormat.UPPER_CAMEL, fieldName))
                .addAnnotation(centryPoint)
                .addModifiers(Modifier.PUBLIC, Modifier.STATIC)
                .addParameter(IsolateThread.class, "_thread")
                .addParameter(typeHandler, targetObjectParam);

        //Get target object from global handles
        var body = CodeBlock.builder();
        body.addStatement("var $L = handles.<$T>get($L)",
                targetObject,
                ClassName.get(source.getPackageDeclaration().get().getNameAsString(), typeName),
                targetObjectParam);

        if (methodType.equals(FieldMethodType.GETTER)) {
            String returnWrapper = returnStatement(fieldType, methodSpec, false);

            //call method on object with parameters from global handles
            body.add(returnWrapper,
                    targetObject,
                    fieldName);
        } else {
            methodSpec.returns(TypeName.VOID);

            var returnParams = new ArrayList<String>();
            paramHandler(methodSpec, body, returnParams, fieldType, fieldName);

            body.addStatement("$L.$L = $L",
                    targetObject,
                    fieldName,
                    returnParams.get(0));
        }

        methodSpec.addCode(body.build());
        return methodSpec;
    }

    private static MethodSpec.Builder wrapMethods(CompilationUnit source, String typeName, HashSet<String> centryPoints, MethodDeclaration method) {
        var targetObject = upperCamelToLowerCamelCase(typeName);
        var targetObjectParam = "_" + targetObject + "Ref";
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

        targetObject = "_" + targetObject;
        var typeHandler = generateHandlerInterface(typeName);
        var methodSpec = MethodSpec.methodBuilder(method.getNameAsString())
                .addAnnotation(centryPoint)
                .addModifiers(Modifier.PUBLIC, Modifier.STATIC)
                .addParameter(IsolateThread.class, "_thread")
                .addParameter(typeHandler, targetObjectParam);

        //set return type
        String returnWrapper = returnStatement(method.getType(), methodSpec, true);

        //Get target object from global handles
        var body = CodeBlock.builder();
        body.addStatement("var $L = handles.<$T>get($L)",
                targetObject,
                ClassName.get(source.getPackageDeclaration().get().getNameAsString(), typeName),
                targetObjectParam);

        //set parameters
        ArrayList<String> returnParams = methodParams(method, targetObject, methodSpec, body);

        //call method on object with parameters from global handles
        body.add(returnWrapper,
                targetObject,
                method.getNameAsString(),
                returnParams.stream().collect(Collectors.joining(", ")
        ));

        methodSpec.addCode(body.build());
        return methodSpec;
    }

    private static ArrayList<String> methodParams(MethodDeclaration method, String targetObject, MethodSpec.Builder methodSpec, CodeBlock.Builder body) {
        //TODO: this method doesn't need to exist move lambda inline
        var returnParams = new ArrayList<String>();
        method.getParameters().forEach(parameter -> {
            paramHandler(methodSpec, body, returnParams, parameter.getType(), parameter.getNameAsString());
        });
        return returnParams;
    }

    private static void paramHandler(MethodSpec.Builder methodSpec, CodeBlock.Builder body, ArrayList<String> returnParams, Type type, String paramName) {
        if (type.asString().equals("String")) {
            methodSpec.addParameter(CCharPointer.class, paramName);
            returnParams.add(MessageFormat.format("toJavaString({0})", paramName));
        } else if (type.asString().equals("String[]"))  {
            var param = paramName + "PtrPtr";
            methodSpec.addParameter(CCharPointerPointer.class, param);
            var lengthParam = paramName + "Length";
            methodSpec.addParameter(int.class, lengthParam);

            body.addStatement("var $L = new String[$L]", paramName, lengthParam);
            body.beginControlFlow("for (int i = 0; i < $L; i++)", lengthParam);
            body.addStatement("$L[i] = toJavaString($L.read(i))", paramName, param);
            body.endControlFlow();

            returnParams.add(paramName);
        } else if (type.isPrimitiveType()) {
            methodSpec.addParameter(ClassName.get("", type.asString()), paramName);
            returnParams.add(paramName);
        } else {
            javaClassParamHandler(methodSpec, body, returnParams, type, paramName);
        }
    }

    private static void javaClassParamHandler(MethodSpec.Builder methodSpec, CodeBlock.Builder body, ArrayList<String> returnParams, Type type, String paramName) {
        var clazz = ClassName.get(ObjectHandle.class);
        if (!type.asString().equals("Object")) {
            clazz = generateHandlerInterface(type.asString());
        }

        methodSpec.addParameter(clazz, paramName + "Ref");

        var statementArgs = new ArrayList<Object>();
        statementArgs.add(paramName);
        var types = new ArrayList<String>();

        populateStatementArgs(type, statementArgs, types);

        statementArgs.add(paramName + "Ref");
        //convert ObjectHandle to real type from global handles
        body.addStatement(MessageFormat.format("var $L = handles.<{0}>get($L)", types.stream().collect(Collectors.joining(""))),
                statementArgs.toArray());


        returnParams.add(paramName);
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

    private static String returnStatement(Type type, MethodSpec.Builder methodSpec, boolean methodCall) {
        var returnWrapper = "return $L.$L($L);";
        if (type.asString().equals("boolean")) {
            returnWrapper = "return toCBoolean($L.$L($L));";
            methodSpec.returns(TypeName.BYTE);
        } else if (type.asString().equals("void")) {
            returnWrapper = "$L.$L($L);";
            methodSpec.returns(TypeName.VOID);
        } else if (type.asString().equals("String")) {
            returnWrapper = "try (var result = toCString($L.$L($L))) { return result.get(); }";
            methodSpec.returns(CCharPointer.class);
        } else if (type.asString().equals("String[]")) {
            returnWrapper = "try (var result = toCStrings($L.$L($L))) { return result.get(); }";
            methodSpec.returns(CCharPointerPointer.class);
        } else if (type.isPrimitiveType()) {
            methodSpec.returns(ClassName.get("", type.asString()));
        } else {
            returnWrapper = "return handles.create($L.$L($L));";
            methodSpec.returns(ObjectHandle.class);
        }
        return methodCall ? returnWrapper : returnWrapper.replace(".$L($L)", ".$L");
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