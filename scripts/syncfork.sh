#!/bin/sh

if [[ -z $(git status -s) ]]
then
  echo "Syncing to upstream."
else
  echo 
  echo "Uncommitted changes.  Aborting sync."
  exit
fi

if [[ 0 -ne $(git fetch upstream) ]]
then
  echo 
  echo "No upstream defined.  Aborting sync."
  exit
fi

git checkout master
git merge upstream/master
git push
