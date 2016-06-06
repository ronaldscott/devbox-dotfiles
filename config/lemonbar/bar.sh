#!/bin/bash

# bar.sh
# panel output for lemonbar

clock() {
  date '+%Y-%m-%d %H:%M'
}

while :; do

  buffer=""
  buffer="${buffer} %{r}$(clock)"

  echo $buffer

  sleep 1

done
