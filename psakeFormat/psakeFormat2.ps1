Task default -depends TaskA, TaskB, TaskC

FormatTaskName "-------- {0} --------"

Task TaskA {
  "TaskA is executing"
}

Task TaskB {
  "TaskB is executing"
}

Task TaskC {
  "TaskC is executing"
}