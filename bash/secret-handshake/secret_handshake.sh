#!/usr/bin/env bash

to_binary () {
  echo "obase=2;$1" | bc
}

print_ordererd () {
  array=("$@")
  array_size="${#array[@]}"

  for ((i=0;i<$array_size;i++)); do
    printf "%s" "${array[$i]}"

    if [[ $i -ne $(($array_size - 1)) ]]; then
      printf ","
    fi
  done
}

print_reversed () {
  array=("$@")
  array_size="${#array[@]}"

  for ((i=$(($array_size - 1));i>=0;i--)); do
    printf "%s" "${array[$i]}"

    if [[ $i -ne 0 ]]; then
      printf ","
    fi
  done
}

main () {
  binary=$(to_binary $1)

  Handshakes=()
  is_ordered=true

  if [[ $binary -ge 10000 ]]; then
    is_ordered=false
    ((binary=$binary-10000))
  fi

  while [ $binary -ne 0 ]; do
    if [[ $binary -ge 1000 ]]; then
      Handshakes+=('jump')
      ((binary=$binary-1000))
    elif [[ $binary -ge 100 ]]; then
      Handshakes+=('close your eyes')
      ((binary=$binary-100))
    elif [[ $binary -ge 10 ]]; then
      Handshakes+=('double blink')
      ((binary=$binary-10))
    elif [[ $binary -ge 1 ]]; then
      Handshakes+=('wink')
      ((binary=$binary-1))
    fi
  done

  if [[ $is_ordered == "true" ]]; then
    print_reversed "${Handshakes[@]}"
  else
    print_ordererd "${Handshakes[@]}"
  fi
}

main "$@"
