#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Check out the gh-pages branch
git checkout gh-pages

# Rebase the gh-pages branch on top of the master branch
git rebase master

# Push the gh-pages branch to the remote repository
git push origin gh-pages

# Check out the master branch again
git checkout master

echo "gh-pages branch is now in sync with master and pushed to origin."
