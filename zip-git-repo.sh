#!/bin/bash

function stash {
	echo -e "\n - from 'stash'";
	git archive --format zip --output "$1" `git stash create`
  echo " - create package in path: "$1""
}

function head {
	echo -e "\n - from HEAD";
	git archive --format zip --output "$1" HEAD
  echo " - create package in path: "$1""
}

# mandatory param - path to package
if [ -z "$1" ]; then
    echo "Usage: ./zip-git-repo PATH_TO_PACKAGE"
    exit
fi

# print all files in git changelist
git status --untracked-files=no -sb

echo "--------------------------------------------"

# create package in right way
if [ -n "$(git status --untracked-files=no -s)" ]; then 
  # if repositry has uncommited files (exists files in changelist)
  # create package using 'git stash create'
  stash $1
else
  # if all modifies are commited use HEAD value
  head $1
fi
