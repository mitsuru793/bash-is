load _test_base

@test 'str:the succeesds' {
  inputs=("" +1 "+1" a "a" "abc" "漢字" "あ")
  for input in ${inputs[@]}; do
    run is str:the $input
    [ "$status" -eq 0 ]
  done
}

@test 'int:the fails' {
  inputs=(-11 -1 0 1 11 "-11" "0" "11")
  for input in ${inputs[@]}; do
    run is str:the $input
    [ "$status" -eq 1 ]
  done
}
