#!/usr/bin/env bash

error_message () {
  echo "Usage: leap.sh <year>"
  exit 1
}

main () {
  year="$1"

  if [[ $# -gt 1 ]] || [[ ! "$year" =~ ^[0-9]+$ ]]; then
    error_message
  fi

  if [[ $year%4 -eq 0 ]]; then
    if [[ $year%100 -eq 0 ]]; then
      if [[ $year%400 -eq 0 ]]; then
        echo "true"
      else
        echo "false"
      fi
    else
      echo "true"
    fi
  else
    echo "false"
  fi
}

main "$@"
