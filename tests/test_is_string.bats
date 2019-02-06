load _test_base

@test 'str:the succeesds' {
  for input in ${string_inputs[@]}; do
    run is str:the $input
    [ "$status" -eq 0 ]
  done
}

@test 'int:the fails' {
  for input in ${integer_inputs[@]}; do
    run is str:the $input
    [ "$status" -eq 1 ]
  done
}
