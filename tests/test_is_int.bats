load _test_base

@test 'int succeesds' {
  for input in ${integer_inputs[@]}; do
    run is int:the $input
    [ "$status" -eq 0 ]
  done
}

@test 'int fails' {
  for input in ${string_inputs[@]}; do
    run is $input int
    [ "$status" -eq 1 ]
  done
}
