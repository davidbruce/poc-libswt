import graal_isolate, libswt, kiwi

type
  Component = ref object
    control*: pointer #swtcontrol
    x*: Variable
    y*: Variable
    width*: Variable
    height*: Variable
  Container = ref object
    component: Component
    solver*: Solver
    children*: seq[Component]

proc newComponent(control: pointer): Component =
  result.new()
  result.control = control
  result.x = newVariable()
  result.y = newVariable()
  result.width = newVariable()
  result.height = newVariable()
  # padding =
proc newContainer(control: pointer): Container =
  result.new()
  result.solver = newSolver()
  result.component = newComponent(control)

proc drawComponent(self: Component, thread: ptr IsolateThread): void =
  control_set_bounds(thread, self.control, cint(self.x.value), cint(self.y.value), cint(self.width.value), cint(self.height.value))
  control_move_above(thread, self.control, nil)

proc drawContainer(self: Container, thread: ptr IsolateThread): void =
  drawComponent(self.component, thread)
  for component in self.children:
    drawComponent(component, thread)

var ret = 0
var isolateThread: ptr Isolatethread

ret = createIsolate(nil, nil, addr(isolate_thread))
echo ret


var display = newDisplay(isolateThread)
var shell = newShell3(isolateThread, display)
shellSetText(isolateThread, shell, "Constraints")

var window = newContainer(newComposite(isolateThread, shell, 0))
var solver = window.solver
solver.addConstraint(window.component.x == 0)
solver.addConstraint(window.component.y == 0)

var main = newComponent(newButton(isolateThread, shell, 8))
solver.addConstraint(main.x == 10)
solver.addConstraint(main.y == 10)
solver.addConstraint((main.width == window.component.width - 20).modifyStrength(kiwi.REQUIRED))
solver.addConstraint((main.height == window.component.height - 20).modifyStrength(kiwi.REQUIRED))
solver.addConstraint((main.width >= 50).modifyStrength(kiwi.REQUIRED))
solver.addConstraint((main.height >= 50).modifyStrength(kiwi.REQUIRED))

var leftChild = newComponent(newButton(isolateThread, shell, 13))
solver.addConstraint(leftChild.x == main.x + 10)
solver.addConstraint(leftChild.y == main.y + 10)
solver.addConstraint(leftChild.width == (main.width/2 - 20))
solver.addConstraint(leftChild.height == (main.height - 20))

var rightChild = newComponent(newButton(isolateThread, shell, 13));
solver.addConstraint(rightChild.x == (main.x + main.width) - (main.width/2 - 10))
solver.addConstraint(rightChild.y == main.y + 10)
solver.addConstraint(rightChild.width == (main.width/2 - 20))
solver.addConstraint(rightChild.height == (main.height - 20))

var centerChild = newComponent(newButton(isolateThread, shell, 13))
solver.addConstraint(centerChild.x == main.x + main.width/4)
solver.addConstraint(centerChild.y == main.y + main.height/4)
solver.addConstraint(centerChild.width == (main.width/2))
solver.addConstraint(centerChild.height == (main.height/2))

solver.updateVariables()
solver.addEditVariable(window.component.width, kiwi.STRONG)
solver.addEditVariable(window.component.height, kiwi.STRONG)

window.children.add(main)
window.children.add(leftChild)
window.children.add(rightChild)
window.children.add(centerChild)

window.drawContainer(isolateThread)
widget_add_listener(isolateThread, shell, 11, create_listener(isolateThread,
  proc (event: pointer) =
    var clientArea = shellGetClientArea(isolateThread, shell)
    solver.suggestValue(window.component.width, float(rectangle_width(isolate_thread, clientArea)))
    solver.suggestValue(window.component.height, float(rectangle_height(isolate_thread, clientArea)))
    solver.updateVariables()
    window.drawContainer(isolateThread)
))

controlSetSize(isolateThread, shell, 200, 200)
shellOpen(isolateThread, shell)

while not bool(widgetIsDisposed(isolateThread, shell)):
  if not bool(displayReadAndDispatch(isolateThread, display)):
    discard displaySleep(isolateThread, display)
