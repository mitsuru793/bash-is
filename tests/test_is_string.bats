load _test_base

@test 'str succeesds' {
  for input in ${string_inputs[@]}; do
    run is $input str
    [ "$status" -eq 0 ]
  done
}

@test 'str fails' {
  for input in ${integer_inputs[@]}; do
    run is $input str
    [ "$status" -eq 1 ]
  done
}
