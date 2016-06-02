#! /bin/bash
FILE=$1

ABSPATH=$(cd "$(dirname "$0")"; pwd)
cd $ABSPATH   # Change to the dir where this script exists no matter how its called.

gpg --decrypt $FILE | less