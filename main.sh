# shellcheck disable=SC2046,SC2086,SC2003,SC2039

_is_interger() {
  local condition=$1
  shift

  case $condition in
    the)
      expr "$1" + 1 >&/dev/null
      return $(test $? -lt 2)
      ;;
    *)
      echo "invalid condition: $condition"
  esac
}

_is_string() {
  local condition=$1
  shift

  case $condition in
    the)
      return $(! _is_interger the $1)
      ;;
    *)
      echo "invalid condition: $condition"
  esac
}

is() {
  local type=${1%%:*}
  local condition=${1#*:}
  local args=(${@:2})

  case $type in
    integer | int)
      return $(_is_interger "$condition" "${args[@]}")
      ;;
    string | str)
      return $(_is_string "$condition" "${args[@]}")
      ;;
    *)
      echo "Invalid type: $type"
      ;;
  esac
}
