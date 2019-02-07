# shellcheck disable=SC2046,SC2086,SC2003,SC2039

_is_interger() {
  local target=$1
  local condition=${2:-}
  shift

  case $condition in
    "")
      expr "$target" + 1 >&/dev/null
      return $(test $? -lt 2)
      ;;
    *)
      echo "Invalid condition: $condition"
  esac
}

_is_string() {
  local target=$1
  local condition=${2:-}
  shift

  case $condition in
    "")
      return $(! _is_interger $target)
      ;;
    *)
      echo "Invalid condition: $condition"
  esac
}

is() {
  local target=$1
  local type=($2)
  local args=(${@:3})

  case $type in
    integer | int)
      return $(_is_interger "$target" "${args[@]}")
      ;;
    string | str)
      return $(_is_string "$target" "${args[@]}")
      ;;
    *)
      echo "Invalid type: $type"
      ;;
  esac
}
