#!/bin/zsh
mkdir ~/sprite-database/entries/$1/$2/$3/ -r
touch ~/sprite-database/entries/$1/$2/$3/$4
cargo r > ~/sprite-database/entries/$1/$2/$3/$4
cat ~/sprite-database/entries/$1/$2/$3/$4
git add ~/sprite-database/*
git commit -m "Adding a new location!"
git push
rm tmp*