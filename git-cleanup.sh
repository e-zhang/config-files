#!/bin/bash


echo "--------------------- DIFFS -------------------------"
diff <(git branch -r | grep -oP ".*/\K.*") <(git branch | grep -oP "\W*\K.*") 
echo "--------------------- LOCAL BRANCHES WIHT NO REMOTE -------------------------"
diff <(git branch -r | grep -oP ".*/\K.*") <(git branch | grep -oP "\W*\K.*") | grep -oP "> \K.*"

if [ $# -gt 0 ] && ( [ $1 == '-d' ] || [ $1 == '-D' ] ); then
        echo "deleting branches... "
        diff <(git branch -r | grep -oP ".*/\K.*") <(git branch | grep -oP "\W*\K.*") | grep -oP "> \K.*" | xargs git branch $1
fi
