# shellcheck disable=SC2046,SC2086,SC2003,SC2039

_is_int() {
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

is() {
  local type=${1%%:*}
  local condition=${1#*:}
  local args=(${@:2})

  case $type in
    int)
      return $(_is_int "$condition" "${args[@]}")
      ;;
    *)
      echo "Invalid type: $type"
      ;;
  esac
}
