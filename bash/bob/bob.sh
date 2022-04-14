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

# If has letter
#   If yelling
#     If question
#       echo 'Calm down, i know what im doing'
#     else
#       echo 'Whoa, chill out!'
#   else
#     if question
#       echo 'Sure'
#     else
#       echo 'Fine be that way'
# else
#   echo 'Whathever'

main () {
  phrase="${1// }"

  if [[ ${phrase: -1} == "?" ]]; then
    if [[ ! $phrase =~ [a-zA-Z] ]]; then
      echo "Sure."
    elif [[ $phrase == ${phrase^^} ]]; then
      echo "Calm down, I know what I'm doing!"
    else
      echo "Sure."
    fi
  else
    if [[ ! $phrase =~ [0-9a-zA-Z] ]]; then
      echo "Fine. Be that way!" 
    elif [[ $phrase == ${phrase^^} ]] && [[ $phrase =~ [a-zA-Z] ]]; then
      echo "Whoa, chill out!"
    else
      echo "Whatever."
    fi
  fi
}

main "$@"
