#!/bin/sh

if [ "$#" -ne 2 ]
then
  echo "Not enough arguments"
  exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ]
then
  echo "$filesdir is not a directory"
  exit 1
fi

# find number of files
numfiles=`grep -l -r $2 $1 | wc -l`

# find number of lines
numlines=`grep -r $2 $1 | wc -l`

echo "The number of files are $numfiles and the number of matching lines are $numlines"