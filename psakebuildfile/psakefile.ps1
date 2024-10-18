Task default -Depends Test

TaskSetup {
    Write-Host "Running Setup"
}

TaskTearDown {
    Write-Host "Running TearDown"
}

BuildSetup {
    Write-Host "Build Setup"
}

BuildTearDown {
    Write-Host "Build TearDown"
}

FormatTaskName {
    param($taskName)
    Write-Host "Executing Task formatting: $taskName" -ForegroundColor blue
}


Task Test -Depends Compile, Clean {
   "This is a test"
 }

Task Compile -Depends Clean {
   "Compile"
 }

Task Clean {
   "Clean"
 }