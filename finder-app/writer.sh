#!/bin/sh

if [ "$#" -ne 2 ]
then
  echo "Not enough arguments"
  exit 1
fi

writefile=$1
writestr=$2

mkdir -p `dirname $writefile`
touch $writefile
if [ -e "$writefile" ]; then
  echo "$writestr" > $writefile
else
  echo "Could not create file"
  exit 1
fi