source "$SECRET_PROJECT_ROOT/main.sh"

string_inputs=("" +1 "+1" a "a" "abc" "漢字" "あ")
integer_inputs=(-11 -1 0 1 11 "-11" "0" "11")

debug() {
  local text=$1
  echo -e "\e[32m${text}\e[m"
}
