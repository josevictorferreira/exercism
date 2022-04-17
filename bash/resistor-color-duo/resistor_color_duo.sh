#!/usr/bin/env bash

get_color () {
  case $1 in
    black)
      echo 0;;
    brown)
      echo 1;;
    red)
      echo 2;;
    orange)
      echo 3;;
    yellow)
      echo 4;;
    green)
      echo 5;;
    blue)
      echo 6;;
    violet)
      echo 7;;
    grey)
      echo 8;;
    white)
      echo 9;;
    *)
      echo "invalid color";;
  esac
}

main () {
  result=""
  for param in $@; do
    color_number=$(get_color $param)
    if [[ $color_number == "invalid color" ]]; then
      echo $color_number
      exit 1
    fi
    result="$result$(get_color $param)"
  done
  result=${result:0:2}
  echo $((${result#0}))
}

main "$@"
