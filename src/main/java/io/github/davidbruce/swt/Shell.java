package io.github.davidbruce.swt;

import org.graalvm.nativeimage.IsolateThread;
import org.graalvm.nativeimage.ObjectHandle;
import org.graalvm.nativeimage.ObjectHandles;
import org.graalvm.nativeimage.c.function.CEntryPoint;
import org.graalvm.nativeimage.c.type.CCharPointer;
import org.graalvm.nativeimage.c.type.CTypeConversion;

public class Shell {
  @CEntryPoint(name="create_shell")
  public static ObjectHandle createShell(IsolateThread thread, ObjectHandle displayPtr) {
    System.out.println(displayPtr.rawValue());
    var handles = ObjectHandles.getGlobal();
    var display = handles.<org.eclipse.swt.widgets.Display>get(displayPtr);
    var shell = new org.eclipse.swt.widgets.Shell(display);
    var handle = handles.create(shell);
    System.out.println(handle.rawValue());
    return handle;
  }
  @CEntryPoint(name = "shell_set_text")
  public static void shellSetText(IsolateThread thread, ObjectHandle shellPtr, CCharPointer text) {
    var handles = ObjectHandles.getGlobal();
    var shell = handles.<org.eclipse.swt.widgets.Shell>get(shellPtr);
    shell.setText(CTypeConversion.toJavaString(text));
  }
  @CEntryPoint(name = "shell_open")
  public static void shellOpen(IsolateThread thread, ObjectHandle shellPtr) {
    System.out.println(shellPtr.rawValue());
    var handles = ObjectHandles.getGlobal();
    var shell = handles.<org.eclipse.swt.widgets.Shell>get(shellPtr);
    shell.open();
  }
  @CEntryPoint(name = "shell_is_disposed")
  public static byte shellIsDisposed(IsolateThread thread, ObjectHandle shellPtr) {
    var handles = ObjectHandles.getGlobal();
    var shell = handles.<org.eclipse.swt.widgets.Shell>get(shellPtr);
    return CTypeConversion.toCBoolean(shell.isDisposed());
  }
  @CEntryPoint(name = "shell_disposed")
  public static void shellDispose(IsolateThread thread, ObjectHandle shellPtr) {
    var handles = ObjectHandles.getGlobal();
    var shell = handles.<org.eclipse.swt.widgets.Shell>get(shellPtr);
    shell.dispose();
  }
}
