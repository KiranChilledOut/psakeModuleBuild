properties {
  $p1 = $null
  $p2 = $null
  $my_property = $($p1 + $p2)
}

task A {
  $my_property = $($p1 + $p2)
  Write-Host $my_property
}
  
task default -depends A,TestParams
  
task TestParams -Depends A {
  
  Write-Host "my_Property = $my_property; p1 = $p1; p2 = $p2"
  Assert ($p1 -ne $null) 'P1 should not be null'
  Assert ($p2 -ne $null) 'P2 should not be null'
  Assert ($my_property -ne $null) '$my_property should not be null'
}