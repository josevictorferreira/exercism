#!/usr/bin/env bash

main () {
  card_numbers=${1// /}
  num_digits=${#card_numbers}

  k=0
  sum=0
  for ((i=$num_digits-1;i>=0;i--)); do
    digit=${card_numbers:i:1}

    if [[ ! $digit =~ [0-9] ]]; then
      break
    fi
    if [[ $k%2 -eq 1 ]]; then
      ((digit=digit*2))
      if [[ $digit -gt 9 ]]; then
        ((digit=digit-9))
      fi
    fi
    ((sum=sum+digit))

    ((k=k+1))
  done

  if [[ $card_numbers =~ ^[0-9]+$ ]]; then
    if [[ $sum%10 -eq 0 ]] && [[ $card_numbers != "0" ]]; then
      echo true
    else
      echo false
    fi
  else
    echo false
  fi
}

main "$@"
