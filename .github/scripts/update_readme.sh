#!/bin/bash

#Inputs
FREQ_RESULT=$1
GITHUB_USER=$2
TIMESTAMP=$(date)

#update README
echo -e "\n[$GITHUB_USER - $FREQ_RESULT - $TIMESTAMP]" >> README.md

#configure git to use github actions user and email
git config --global user.name "github.actions"
git config --global user.email "github-actions@users.noreply.github.com"


#add README.mb to git, commit and push the changes
git add README.md
git commit -a "Update README with vowel frequency results"
git push
