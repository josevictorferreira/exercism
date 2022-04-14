#!/usr/bin/env bash

declare -A letters

letters[A]=1
letters[E]=1
letters[I]=1
letters[O]=1
letters[U]=1
letters[L]=1
letters[N]=1
letters[R]=1
letters[S]=1
letters[T]=1
letters[D]=2
letters[G]=2
letters[B]=3
letters[C]=3
letters[M]=3
letters[P]=3
letters[F]=4
letters[H]=4
letters[V]=4
letters[W]=4
letters[Y]=4
letters[K]=5 
letters[J]=8 
letters[X]=8
letters[Q]=10
letters[Z]=10

main () {
  word=${1^^}
  word_length=${#word}
  score=0

  for ((i = 0; i < word_length; i++)); do
    letter=${word:i:1}
    letter_score=${letters[$letter]}
    ((score = $score + $letter_score))
  done

  echo $score
}

main "$@"
