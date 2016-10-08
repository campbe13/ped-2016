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
 
