package io.github.davidbruce.swt;

import com.github.javaparser.JavaParser;
import com.github.javaparser.StaticJavaParser;
import com.github.javaparser.ast.CompilationUnit;
import com.github.javaparser.ast.body.FieldDeclaration;
import com.github.javaparser.ast.body.MethodDeclaration;
import com.github.javaparser.ast.body.Parameter;
import com.github.javaparser.utils.SourceRoot;
import com.google.common.base.CaseFormat;
import com.google.common.reflect.ClassPath;
import com.squareup.javapoet.AnnotationSpec;
import com.squareup.javapoet.ClassName;
import com.squareup.javapoet.CodeBlock;
import com.squareup.javapoet.FieldSpec;
import com.squareup.javapoet.JavaFile;
import com.squareup.javapoet.MethodSpec;
import com.squareup.javapoet.ParameterSpec;
import com.squareup.javapoet.TypeName;
import com.squareup.javapoet.TypeSpec;
import com.squareup.javapoet.TypeVariableName;

import java.io.IOException;
import java.lang.reflect.Type;
import java.nio.file.Path;
import java.text.MessageFormat;
import java.util.stream.Collectors;
import javax.lang.model.element.Modifier;
import javax.lang.model.element.TypeElement;
import javax.lang.model.type.TypeKind;
import javax.lang.model.type.TypeMirror;

import org.eclipse.swt.widgets.Display;

import org.graalvm.nativeimage.IsolateThread;
import org.graalvm.nativeimage.ObjectHandle;
import org.graalvm.nativeimage.ObjectHandles;
import org.graalvm.nativeimage.c.function.CEntryPoint;
import org.graalvm.nativeimage.c.type.CCharPointer;

public class Generator {
    public static void main(String[] args) throws IOException {
        var root = new SourceRoot(Path.of("/Users/davidbruce/Git/projects/java/swt-shared/eclipse.platform.swt/bundles/org.eclipse.swt/Eclipse SWT/cocoa"));

        var displaySource = root.parse("org.eclipse.swt.widgets", "Display.java");
        var display = displaySource.getClassByName("Display");

        var classSpec = TypeSpec.classBuilder("Display")
                .addModifiers(Modifier.PUBLIC);
        var fieldSpec = FieldSpec.builder(ObjectHandles.class, "handles")
                .initializer("ObjectHandles.getGlobal();");

        display.get()
                .getMethods()
                .stream()
                .filter(method -> method.isPublic() && !method.isStatic())
                .forEach(method -> {
                    var targetObject = "display";
                    var centryPoint = AnnotationSpec.builder(CEntryPoint.class)
                            .addMember("name", targetObject + "_" + CaseFormat.LOWER_CAMEL.to(CaseFormat.LOWER_UNDERSCORE, method.getNameAsString()))
                            .build();

                    var methodSpec = MethodSpec.methodBuilder(method.getNameAsString())
                            .addAnnotation(centryPoint)
                            .addModifiers(Modifier.PUBLIC)
                            .addParameter(IsolateThread.class, "thread")
                            .addParameter(ObjectHandle.class, targetObject + "Ref");

                    //set return type
                    if (method.getTypeAsString().equals("boolean")) {
                        methodSpec.returns(TypeName.BYTE);
                    } else if (method.getTypeAsString().equals("void")) {
                        methodSpec.returns(TypeName.VOID);
                    } else if (method.getTypeAsString().equals("String")) {
                        methodSpec.returns(CCharPointer.class);
                    } else if (method.getType().isPrimitiveType()) {
                        methodSpec.returns(ClassName.get("java.lang", method.getTypeAsString()));
                    } else {
                        methodSpec.returns(ObjectHandle.class);
                    }

                    //Get target object from global handles
                    var body = CodeBlock.builder();
                    body.add(MessageFormat.format("var {0} = handles.<{1}>get({2});\n",
                            targetObject,
                            "Display",
                            targetObject + "Ref"));

                    //set parameters
                    method.getParameters().forEach(parameter -> {
                        if (parameter.getTypeAsString().equals("String")) {
                            methodSpec.addParameter(CCharPointer.class, parameter.getNameAsString());
                        } else if (parameter.getType().isPrimitiveType()) {
                            methodSpec.addParameter(ClassName.get("java.lang", parameter.getTypeAsString()), parameter.getNameAsString());
                        } else {
                            methodSpec.addParameter(ObjectHandle.class, parameter.getNameAsString() + "Ref");
                            //convert ObjectHandle to real type
                            body.add(MessageFormat.format("var {0} = handles.<{1}>get({2});\n",
                                    parameter.getNameAsString(),
                                    parameter.getTypeAsString(),
                                    parameter.getNameAsString() + "Ref"));
                        }
                    });

                    body.add(MessageFormat.format("return {0}.{1}({2});\n",
                            targetObject,
                            method.getNameAsString(),
                            method.getParameters().stream().map(Parameter::getNameAsString).collect(Collectors.joining(", "))
                    ));
//                    body.addStatement()
//                    methodSpec.addCode();

//          var handles = ObjectHandles.getGlobal();
//          var handle = handles.create(new org.eclipse.swt.widgets.Display());
//          System.out.println(handle.rawValue());
//          return handle;
//
                    methodSpec.addCode(body.build());
                    classSpec.addMethod(methodSpec.build());
                });

        var javaFile = JavaFile.builder("com.example.helloworld", classSpec.build())
                .build();

        javaFile.writeTo(System.out);
    }
}
