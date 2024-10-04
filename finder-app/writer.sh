#!/bin/sh

writefile=$1
writestr=$2

# Check arguments numfiles and writestr are exist.
if [ -z "$writefile" ] || [ -z "$writestr" ]
then
    echo "No arguments, please input: $0 writefile writestr"
    exit 1
fi

# Get the path of the upper level directory
dirpath=$(dirname "$writefile")

# Is directory exists?
if [ ! -d $dirpath ]
then
    mkdir -p $dirpath
fi

# Put string in a file
echo "$writestr" > "$writefile"

# Check writefile exists.
if [ ! -f $writefile ]
then
    echo "The file could not be created"
    exit 1
fi
