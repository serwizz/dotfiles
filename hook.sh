#!/bin/bash
#

FILES=$(find -maxdepth 8 -type d -name 'hooks' | grep 'yapps')
URL='https://raw.githubusercontent.com/serwizz/dotfiles/master/pre-commit'

TMPFILE=$(mktemp)

curl $URL > $TMPFILE

echo 'done downloading pre-commit file'

for FILE in $FILES
do

HOOK=${FILE}/pre-commit

cp $TMPFILE $HOOK && chmod +x $HOOK

echo 'done copy hook to ' $HOOK;

done 