Task default -Depends TaskA

Task TaskA -Depends TaskB {
    "Task - A"
}

Task TaskB -Depends TaskC -ContinueOnError {
    "Task - B"
    $var = 10
    throw "I failed on purpose! var = $var"
}

Task TaskC {
    $var = 11
    "Task - C $var"
}