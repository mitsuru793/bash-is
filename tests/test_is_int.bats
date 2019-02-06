load _test_base

@test 'int:the succeesds' {
  inputs=(-11 -1 0 1 11 "-11" "0" "11")
  for input in ${inputs[@]}; do
    run is int:the $input
    [ "$status" -eq 0 ]
  done
}

@test 'int:the fails' {
  inputs=(a "a" "" +1 "+1")
  for input in ${inputs[@]}; do
    run is int:the $input
    [ "$status" -eq 1 ]
  done
}
