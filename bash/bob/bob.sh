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
  phrase="${1//[^a-zA-Z\?]/ }"
  phrase="${phrase// }"

  if [[ -z $phrase ]]; then
    echo "Whatever."
  elif [ $phrase == ${phrase^^} ] && [ $phrase != "?" ]; then
    if [[ ${phrase: -1} == "?" ]]; then
      echo "Calm down, I know what I'm doing!"
    else
      echo "Whoa, chill out!"
    fi
  else
    if [[ ${phrase: -1} == "?" ]]; then
      echo "Sure."
    else
      echo "Whatever."
    fi
  fi
}

main "$@"
