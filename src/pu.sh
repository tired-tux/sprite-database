#!/bin/zsh
mkdir ~/sprite-database/entries/$1/
cd ~/sprite-database/entries/$1
mkdir $2
cd $2
mkdir $3
cd $3
touch $4.md
cargo r > $4.md
cat $4.md
git add ~/sprite-database/*
git commit -m "Adding a new location!"
git push
