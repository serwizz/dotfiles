#!/bin/bash
#

FILES=$(find -maxdepth 10 -type f -name 'config' | grep -E 'yapps_|fmapp2' | grep -E '.git')
OLD_URL='yotadevices.com:29418'
NEW_URL='yotadevices.com:29419'



for FILE in $FILES
do

sed -i -r "s/$OLD_URL/$NEW_URL/g" $FILE;

echo 'change ' $FILE;

done 