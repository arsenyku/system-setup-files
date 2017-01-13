git config --global --remove-section alias

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
git config --global alias.newbranch 'checkout -b'
git config --global alias.stashes 'stash list'
git config --global alias.unstashfile '!f() { git checkout stash@{$1} -- $2 ; };f'
git config --global alias.cancelmerge 'reset --merge ORIG_HEAD'
git config --global alias.listancestors 'branch --merged'
git config --global alias.undolastcommit 'reset HEAD~'
git config --global alias.aliases "config --get-regexp '^alias\.'"


git config --get-regexp '^alias\.'
