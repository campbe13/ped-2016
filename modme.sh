#!/bin/bash
# PMC
# October 2016
# set up files w different content & time stamps
# for use in find exercises and other demos


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

# Make a bunch of fake image files with different timestamps
cd -
if [ ! -d images_example ] ; then
  mkdir images_example
  cd images_example
  for i in {1532..1539}
     do
     touch -d 20120630 "IMG_$i.jpg"
     done
  for i in {1540..1552}
     do
     touch -d 20120701 "IMG_$i.jpg"
     done
  for i in {1553..1566}
     do
     touch -d 20120703 "IMG_$i.jpg"
     done
fi
