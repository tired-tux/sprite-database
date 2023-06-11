#!/bin/zsh
cargo r > .tmp
touch ~/sprite-database/entries/$1
cat .tmp | tee ~/sprite-database/entries/$1
rm .tmp
cat ~/sprite-database/entries/$1
git add ~/sprite-database/*
git commit -m "Adding a new location!"
git push