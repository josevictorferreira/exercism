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
  NUMBER=$1
  NUM_DIGITS=${#NUMBER}

  TOTAL=0

  for ((k=0;k<$NUM_DIGITS;k++));
  do
    NUM=${NUMBER:k:1}
    ((TOTAL=$TOTAL + $NUM ** $NUM_DIGITS))
  done

  if [[ $TOTAL -eq $NUMBER ]];
  then
    echo "true"
  else
    echo "false"
  fi
}

main "$@"
