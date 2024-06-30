#!/bin/bash
if [ "$1" == "--date" ]; then
  date
fi
if [ "$1" == "--logs" ]; then
  for i in {1..100}; do
    echo "Numer pliku: $1, utworzono przez: skrpyt.sh, data: $(date)" > log_$1.txt
  done
fi
