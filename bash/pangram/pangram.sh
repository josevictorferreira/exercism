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
  TEXT="${@//[^a-zA-Z]/}"
  PHRASE=${TEXT,,}

  IS_PANGRAM="true"

  if [[ $PHRASE != "" ]];
  then
    for letter in {a..z};
    do
      if [[ "$PHRASE" == *"$letter"* ]];
      then
        continue
      else
        IS_PANGRAM="false"
        break
      fi
    done
  else
    IS_PANGRAM="false"
  fi


  echo $IS_PANGRAM
}

main $@
