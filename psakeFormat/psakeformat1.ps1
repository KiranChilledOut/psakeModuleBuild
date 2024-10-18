Task default -depends TaskA, TaskB, TaskC

FormatTaskName {
   param($taskName)
   Write-Host "Executing Task: $taskName" -ForegroundColor blue
}

Task TaskA {
  "TaskA is executing"  
}

Task TaskB {
  "TaskB is executing"  
}

Task TaskC {
  "TaskC is executing"  
}