task default -depends A

Task A -Depends B {
    Write-Host "Task A"
}

Task B {
    Write-Host "Task B"
}