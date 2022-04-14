#!/usr/bin/env bash

main () {
  input="$1"


  if [[ $input == "total" ]]; then
    result=$(bc <<< "(2^64)-1")
    echo $result
  elif [[ $input -lt 1 ]] || [[ $input -gt 64 ]]; then
    echo "Error: invalid input"
    exit 1
  else
    result=$(bc <<< "2^($input-1)")
    echo $result
  fi
}

main "$@"
