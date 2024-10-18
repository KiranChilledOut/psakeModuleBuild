Task default -depends TaskA

Task TaskA -depends TaskB {
    'Task - A'
}

Task TaskB -depends TaskC -ContinueOnError {
    Exec -MaxRetries 3 -RetryTriggerErrorPattern "failed on var" {
        'Task - B'
        $var = 10
        Write-Host $var
        Test-NetConnetion -ComputerName djdhkjed
    }
    
}

Task TaskC {
    $var = 11
    "Task - C $var"
}