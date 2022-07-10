package io.github.davidbruce.swt;

import com.github.javaparser.ast.body.Parameter;
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
import java.util.List;
import java.util.stream.Collectors;
import javax.lang.model.element.Modifier;

import org.graalvm.nativeimage.IsolateThread;
import org.graalvm.nativeimage.ObjectHandle;
import org.graalvm.nativeimage.ObjectHandles;
import org.graalvm.nativeimage.c.function.CEntryPoint;
import org.graalvm.nativeimage.c.type.CCharPointer;
import org.graalvm.nativeimage.c.type.CCharPointerPointer;
import org.graalvm.nativeimage.c.type.CTypeConversion;
import org.graalvm.word.UnsignedWord;

public class Generator {
    public static void main(String[] args) throws IOException {
        var root = new SourceRoot(Path.of("./eclipse.platform.swt/bundles/org.eclipse.swt/Eclipse SWT/cocoa"));
        root.tryToParse();
        root.getCompilationUnits().stream().forEach(source -> {
            var type = source.getPrimaryType().get();
            var typeName = type.getNameAsString();

            var classSpec = TypeSpec.classBuilder(typeName + "Wrapper")
                    .addModifiers(Modifier.PUBLIC);
            var handlesField = FieldSpec.builder(ObjectHandles.class, "handles")
                    .initializer("ObjectHandles.getGlobal()")
                    .build();

            classSpec.addField(handlesField);
            type.getMethods()
                    .stream()
                    .filter(method -> method.isPublic() && !method.isStatic() && !method.isGeneric())
                    .forEach(method -> {
                        var targetObject = CaseFormat.UPPER_CAMEL.to(CaseFormat.LOWER_CAMEL, typeName);
                        var centryPoint = AnnotationSpec.builder(CEntryPoint.class)
                                .addMember("name", MessageFormat.format("\"{0}_{1}\"",
                                                targetObject,
                                                CaseFormat.LOWER_CAMEL.to(CaseFormat.LOWER_UNDERSCORE, method.getNameAsString()))
                                )
                                .build();

                        var methodSpec = MethodSpec.methodBuilder(method.getNameAsString())
                                .addAnnotation(centryPoint)
                                .addModifiers(Modifier.PUBLIC)
                                .addParameter(IsolateThread.class, "thread")
                                .addParameter(ObjectHandle.class, targetObject + "Ref");

                        //set return type
                        var returnWrapper = "return $L.$L($L)";
                        if (method.getTypeAsString().equals("boolean")) {
                            returnWrapper = "return toCBoolean($L.$L($L))";
                            methodSpec.returns(TypeName.BYTE);
                        } else if (method.getTypeAsString().equals("void")) {
                            returnWrapper = "$L.$L($L)";
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
                            returnWrapper = "return handles.create($L.$L($L))";
                            methodSpec.returns(ObjectHandle.class);
                        }

                        //Get target object from global handles
                        var body = CodeBlock.builder();
                        body.addStatement("var $L = handles.<$T>get($L)",
                                targetObject,
                                ClassName.get(source.getPackageDeclaration().get().getNameAsString(), typeName),
                                targetObject + "Ref");

                        //set parameters
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
                                body.addStatement("$L[i] = $L.read(i)", parameter.getNameAsString(), param);
                                body.endControlFlow();

                                returnParams.add(parameter.getNameAsString());
                            } else if (parameter.getType().isPrimitiveType()) {
                                methodSpec.addParameter(ClassName.get("", parameter.getTypeAsString()), parameter.getNameAsString());
                                returnParams.add(parameter.getNameAsString());
                            } else {
                                methodSpec.addParameter(ObjectHandle.class, parameter.getNameAsString() + "Ref");

                                //convert ObjectHandle to real type from global handles
                                body.addStatement("var $L = handles.<$T>get($L)",
                                        parameter.getNameAsString(),
                                        ClassName.get("", parameter.getTypeAsString()),
                                        parameter.getNameAsString() + "Ref");

                                returnParams.add(parameter.getNameAsString());
                            }
                        });

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
}