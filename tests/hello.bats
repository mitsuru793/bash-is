@test 'say hello' {
  run echo 'hello'
  [ "$status" -eq 0 ]
  [ "$output" = 'hello' ]
}
