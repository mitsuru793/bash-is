load _test_base

@test 'string:the succeesds' {
  for input in ${string_inputs[@]}; do
    run is str:the $input
    [ "$status" -eq 0 ]
  done
}

@test 'string:the fails' {
  for input in ${integer_inputs[@]}; do
    run is str:the $input
    [ "$status" -eq 1 ]
  done
}
