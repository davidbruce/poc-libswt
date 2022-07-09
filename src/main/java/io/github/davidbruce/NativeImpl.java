package io.github.davidbruce;

import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.graalvm.nativeimage.IsolateThread;
import org.graalvm.nativeimage.Isolates;
import org.graalvm.nativeimage.ObjectHandle;
import org.graalvm.nativeimage.ObjectHandles;
import org.graalvm.nativeimage.PinnedObject;
import org.graalvm.nativeimage.c.function.CEntryPoint;
import org.graalvm.nativeimage.c.type.CCharPointer;
import org.graalvm.nativeimage.c.type.CTypeConversion;

public final class NativeImpl {
//  Display display = new Display();
//  Shell shell = new Shell(display);
//  public static void main(String[] args) {
//    Display display = new Display();
//    Shell shell = new Shell(display);
//    shell.setText("Snippet 1");
//    shell.open();
//    while (!shell.isDisposed()) {
//      if (!display.readAndDispatch()) {
//        display.sleep();
//      }
//    }
//    display.dispose();
//  }
  @CEntryPoint(name = "get_first_isolate")
  public static IsolateThread getFirstIsolate(IsolateThread thread) {
     var params = new Isolates.CreateIsolateParameters.Builder()
         .appendArgument("-J-XstartOnFirstThread")
         .build();
     return Isolates.createIsolate(params);
  }
  @CEntryPoint(name="create_app")
  public static void createApp(IsolateThread thread) {
    Display display = new Display();
    Shell shell = new Shell(display);
    shell.setText("Snippet 1");
    shell.open();
    while (!shell.isDisposed()) {
      while (!shell.isDisposed()) {
        if (!display.readAndDispatch()) {
          display.sleep();
        }
      }

    }
  }
  @CEntryPoint(name = "add")
  public static int add(IsolateThread thread, int a, int b) {
    return a + b;
  }
  @CEntryPoint(name="create_display")
  public static ObjectHandle createDisplay(IsolateThread thread) {
    var handles = ObjectHandles.getGlobal();
    var handle = handles.create(new Display());
    System.out.println(handle.rawValue());
    return handle;
  }
  @CEntryPoint(name = "display_read_and_dispatch")
  public static byte displayReadAndDispatch(IsolateThread thread, ObjectHandle displayPtr) {
    var handles = ObjectHandles.getGlobal();
    var display = handles.<Display>get(displayPtr);
    return CTypeConversion.toCBoolean(display.readAndDispatch());
  }
  @CEntryPoint(name = "display_sleep")
  public static void displaySleep(IsolateThread thread, ObjectHandle displayPtr) {
    var handles = ObjectHandles.getGlobal();
    var display = handles.<Display>get(displayPtr);
    display.sleep();
  }
  @CEntryPoint(name="create_shell")
  public static ObjectHandle createShell(IsolateThread thread, ObjectHandle displayPtr) {
    System.out.println(displayPtr.rawValue());
    var handles = ObjectHandles.getGlobal();
    var display = handles.<Display>get(displayPtr);
    var shell = new Shell(display);
    var handle = handles.create(shell);
    System.out.println(handle.rawValue());
    return handle;
  }
  @CEntryPoint(name = "shell_set_text")
  public static void shellSetText(IsolateThread thread, ObjectHandle shellPtr, CCharPointer text) {
    var handles = ObjectHandles.getGlobal();
    var shell = handles.<Shell>get(shellPtr);
    shell.setText(CTypeConversion.toJavaString(text));
  }
  @CEntryPoint(name = "shell_open")
  public static void shellOpen(IsolateThread thread, ObjectHandle shellPtr) {
    System.out.println(shellPtr.rawValue());
    var handles = ObjectHandles.getGlobal();
    var shell = handles.<Shell>get(shellPtr);
    shell.open();
  }
  @CEntryPoint(name = "shell_is_disposed")
  public static byte shellIsDisposed(IsolateThread thread, ObjectHandle shellPtr) {
    var handles = ObjectHandles.getGlobal();
    var shell = handles.<Shell>get(shellPtr);
    return CTypeConversion.toCBoolean(shell.isDisposed());
  }
  @CEntryPoint(name = "shell_disposed")
  public static void shellDispose(IsolateThread thread, ObjectHandle shellPtr) {
    var handles = ObjectHandles.getGlobal();
    var shell = handles.<Shell>get(shellPtr);
    shell.dispose();
  }
}

//  Display display = new Display ();
//  Shell shell = new Shell(display);
//	shell.setText("Snippet 1");
//      shell.open ();
//    while (!shell.isDisposed ()) {
//    if (!display.readAndDispatch ()) display.sleep ();
//    }
//    display.dispose ();