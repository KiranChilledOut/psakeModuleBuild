Task default -Depends A

Task A -Depends B{
    pwsh /c exit (1)

    if($LASTEXITCODE -ne 0){
        throw "Command-Line program failed"
    }
}

Task B {
    exec{
        pwsh /c exit (1)
    }
    
}