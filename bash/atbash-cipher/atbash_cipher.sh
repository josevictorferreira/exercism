#!/usr/bin/env bash

declare -A alphabet
inverted_alphabet=( {z..a} )

k=0
for l in {a..z}; do
  alphabet[$l]=${inverted_alphabet[$k]}
  ((k=k+1))
done

encode () {
  text=${1//[^a-zA-Z0-9]/}
  text=${text,,}

  text_size=${#text}

  for ((i=0;i<$text_size;i++)); do
    char=${text:$i:1}

    if [[ $char =~ [a-z] ]]; then
      char=${alphabet[$char]}
    fi
    if [[ $i%5 -eq 0 ]] && [[ $i -ne 0 ]]; then
      printf " $char"
    else
      printf $char
    fi
  done
}

decode () {
  text=${1//[^a-zA-Z0-9 ]/}
  text=${text,,}
  text=${text// /}

  text_size=${#text}

  for ((i=0;i<$text_size;i++)); do
    char=${text:$i:1}

    if [[ $char =~ [a-z] ]]; then
      char=${alphabet[$char]}
    fi

    printf "$char"
  done
}

"$@"
