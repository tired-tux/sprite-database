#!/bin/zsh
cargo r > .tmp
mkdir $1/$2/$3/
touch ~/sprite-database/entries/$1/$2/$3/$4
cat .tmp | tee ~/sprite-database/entries/$1/$2/$3/$4
rm .tmp
cat ~/sprite-database/entries/$1/$2/$3/$4
git add ~/sprite-database/*
git commit -m "Adding a new location!"
git push