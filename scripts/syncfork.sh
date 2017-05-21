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

# Get branches from upstream

branchNames=`git branch -r | grep upstream | grep -v master | grep -v HEAD | awk '{gsub(/^[^\/]+\//,"",$1); print $1}'`

for branch in $branchNames 
do
   echo Syncing branch: $branch
   git checkout -b $branch upstream/$branch
   git push -u origin $branch
done


