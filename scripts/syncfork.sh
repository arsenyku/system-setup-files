#!/bin/sh

if [[ -z $(git status -s) ]]
then
  echo "Syncing to upstream."
else
  echo "Uncommitted changes.  Aborting sync."
  exit
fi

git fetch upstream
git checkout master
git merge upstream/master
git push
