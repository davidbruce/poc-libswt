package io.github.davidbruce.swt;

import org.graalvm.nativeimage.IsolateThread;
import org.graalvm.nativeimage.ObjectHandle;
import org.graalvm.nativeimage.ObjectHandles;
import org.graalvm.nativeimage.c.function.CEntryPoint;
import org.graalvm.nativeimage.c.type.CTypeConversion;

public final class Display {
  @CEntryPoint(name="create_display")
  public static ObjectHandle createDisplay(IsolateThread thread) {
    var handles = ObjectHandles.getGlobal();
    var handle = handles.create(new org.eclipse.swt.widgets.Display());
    System.out.println(handle.rawValue());
    return handle;
  }
  @CEntryPoint(name = "display_read_and_dispatch")
  public static byte displayReadAndDispatch(IsolateThread thread, ObjectHandle displayPtr) {
    var handles = ObjectHandles.getGlobal();
    var display = handles.<org.eclipse.swt.widgets.Display>get(displayPtr);
    return CTypeConversion.toCBoolean(display.readAndDispatch());
  }
  @CEntryPoint(name = "display_sleep")
  public static void displaySleep(IsolateThread thread, ObjectHandle displayPtr) {
    var handles = ObjectHandles.getGlobal();
    var display = handles.<org.eclipse.swt.widgets.Display>get(displayPtr);
    display.sleep();
  }
}