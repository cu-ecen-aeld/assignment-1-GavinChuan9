#!/bin/sh

filesdir=$1
searchstr=$2

# Check arguments filesdir and searchstr are exist.
if [ -z "$filesdir" ] || [ -z "$searchstr" ]
then
    echo "No arguments, please input: $0 filesdir searchstr"
    exit 1
fi

# Is filesdir exists?
if [ ! -d "$filesdir" ]
then
    echo "$filesdir does not exists."
    exit 1
fi

X=$(find $filesdir -type f | wc -l)
Y=$(grep -r $searchstr $filesdir | wc -l)
echo "The number of files are $X and the number of matching lines are $Y"
