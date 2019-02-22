#!/bin/bash

string=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 12 | head -n 1)


nama="password"
no=1

while test -e "$nama$no.txt";
 do
   let no++
 done
filename="$nama$no.txt"
echo "$string" > $filename
