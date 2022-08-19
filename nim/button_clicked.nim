import graal_isolate, libswt

var ret = 0
var isolateThread: ptr Isolatethread

ret = createIsolate(nil, nil, addr(isolate_thread))
echo ret

var display = newDisplay(isolateThread)
var shell = newShell3(isolateThread, display)
shellSetText(isolateThread, shell, "Hello World!")

var button = newButton(isolateThread, shell, 1);
buttonSetText(isolateThread, button, "Click me!")

proc callback(thread: ptr IsolateThread, event: pointer) =
  var button = eventWidget(thread, event)
  buttonSetText(thread, button, "Ya Clicked!")

var listener = createListener(isolateThread, callback);
widgetAddListener(isolateThread, button, 13, listener);

var rowLayout = newRowLayout(isolateThread);
compositeSetLayout(isolate_thread, shell, rowLayout);
controlPack(isolate_thread, shell);

shellOpen(isolateThread, shell)

while not bool(widgetIsDisposed(isolateThread, shell)):
  if not bool(displayReadAndDispatch(isolateThread, display)):
    discard displaySleep(isolateThread, display)
