#!/usr/bin/env bash

# The following comments should help you get started:
# - Bash is flexible. You may use functions or write a "raw" script.
#
# - Complex code can be made easier to read by breaking it up
#   into functions, however this is sometimes overkill in bash.
#
# - You can find links about good style and other resources
#   for Bash in './README.md'. It came with this exercise.
#
#   Example:
#   # other functions here
#   # ...
#   # ...
#
#   main () {
#     # your main function code here
#   }
#
#   # call main with all of the positional arguments
#   main "$@"
#
# *** PLEASE REMOVE THESE COMMENTS BEFORE SUBMITTING YOUR SOLUTION ***

main () {
  if [ $# -eq 2 ]; then
    DNA_1=$1
    DNA_2=$2
    if [ ${#DNA_1} -eq ${#DNA_2} ]; then
      SIZE=${#DNA_1};
      COUNT=0;
      for ((k=0;k<$SIZE;k++)); do
        if [ ${DNA_1:$k:1} != ${DNA_2:$k:1} ];
        then
          ((COUNT=COUNT+1))
        fi
      done
      echo $COUNT
    else
      echo "strands must be of equal length"
      exit 1
    fi
  else
    echo "Usage: hamming.sh <string1> <string2>"
    exit 1
  fi
}

main "$@"
