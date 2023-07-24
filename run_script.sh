#!/bin/bash
python3 $1 $2

python_status=$?

current_date=$(date "+%d/%m/%y %T")

msg="The following Script ran to error: $1 at $current_date"

if [ $python_status -ne 0 ]; then
echo "$msg" | mail -v -s "Scipt Failure" wayefi3795@carpetra.com;

msg="A script has ran to error:
Server: $HOSTNAME
Script Name: $1
Time: $current_date"

fi;

echo "$python_status"
echo "$msg"