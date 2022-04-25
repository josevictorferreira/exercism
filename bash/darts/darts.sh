#!/usr/bin/env bash

validate_args () {
  num_args=${#@}

  if [[ $num_args -gt 2 ]] || [[ $num_args -lt 2 ]]; then
    exit 1
  elif [[ ! $1 =~ [0-9] ]]; then
    exit 1
  elif [[ ! $2 =~ [0-9] ]]; then
    exit 1
  fi
}

main () {
  validate_args "$@"

  points=0

  x=$1
  y=$2

  if [[ $x -lt 0 ]]; then
    ((x=x*-1))
  fi
  if [[ $y -lt 0 ]]; then
    ((y=y*-1))
  fi
  gt=$x
  if [[ $y -gt $x ]]; then
    gt=$y
  fi
  if [[ $gt -le 1 ]]; then
    points=10
  elif [[ $gt -le 5 ]]; then
    points=5
  elif [[ $gt -le 10 ]]; then
    points=1
  fi

  echo $points
}

main "$@"
