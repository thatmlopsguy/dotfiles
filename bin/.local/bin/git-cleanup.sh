#!/bin/bash
#
# Change this to match the name of your top level branch
# Source: https://daveceddia.com/clean-up-merged-git-branches/
MAIN=main

echo "These branches have been merged into $MAIN and will be deleted:"
echo
git branch --merged $MAIN | grep -v "^\* $MAIN"
echo

read -p "Continue? [y/N] " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
  exit 1
fi

git branch --merged $MAIN | grep -v "^\* $MAIN" | xargs -n 1 -r git branch -d
