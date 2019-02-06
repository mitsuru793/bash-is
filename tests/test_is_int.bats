load _test_base

@test 'int:the succeesds' {
  for input in ${integer_inputs[@]}; do
    run is int:the $input
    [ "$status" -eq 0 ]
  done
}

@test 'int:the fails' {
  for input in ${string_inputs[@]}; do
    run is int:the $input
    [ "$status" -eq 1 ]
  done
}
