#!/bin/bash
# PMC
# October 2016
# set up files w different content & time stamps 
# for use in find exercises


touch -d "36 hours ago" writing/*
date > writing/contains.the.date.txt

touch -d "36 hours ago" data/elements/*
touch -d "36 hours ago" data/pdb/*
touch -d "36 hours ago" data/

touch -d "36 hours ago" .gitignore
touch datestamp-$(date +%F-%H:%M:%S)
sleep 2
touch datestamp-$(date +%F-%H:%M:%S)
sleep 2
touch datestamp-$(date +%F-%H:%M:%S)

if [ ! -d CS ] ; then 
mkdir CS
cd CS
for i in bash c python c++ java
  do
  echo "great language! $(date +%F)" >  language-$i.TXT
  done
for i in  ghopper alovelace agoldberg mmeltzer bholberton
  do
  echo "pioneer in computer science" > team-$i.Txt
  done
fi

