#!/usr/bin/env bash

main () {
  text="$1"
  text_size=${#text}
  ((text_size=$text_size-1))

  for ((i=$text_size;i>=0;i--)); do
    char=${text:$i:1}
    printf "$char"
  done
}

main "$@"
