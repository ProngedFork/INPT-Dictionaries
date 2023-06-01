#!/bin/bash

## Usage: ./username-generator.sh users.txt
echo "[+] Starting username generation"
for i in $(cat $1)
do
  for j in $(cat $1)
  do
    echo "${i}.${j}" | anew -q custom-users.txt
  done
done

echo "[+] Completed: $(cat custom-users.txt | sort -u | wc -l) usernames created"
