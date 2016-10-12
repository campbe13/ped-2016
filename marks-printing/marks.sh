#!/bin/bash
#split the cvs marks
count=0
for line in $(cat 112-2.csv)
do
  let count++

  name=$(echo $line|cut -d "," -f 1)
  
  testrun=$(echo $line|cut -d "," -f 2)
  testdata=$(echo $line|cut -d "," -f 3)
  flowchart=$(echo $line|cut -d "," -f 4)
  sourcecomments=$(echo $line|cut -d "," -f 5)
  sourcelogic=$(echo $line|cut -d "," -f 6)
  sourcevars=$(echo $line|cut -d "," -f 7)
  output=$(echo $line|cut -d "," -f 8)
  coveranal=$(echo $line|cut -d "," -f 9)
  total=$(echo $line|cut -d "," -f 10)


  echo "420-112-dw logic Assignment 1"
  echo "Submitted by  " $name
  echo

  echo -e "Test Run\t" $testrun / 5
  echo -e "Test Data\t" $testdata / 20
  echo -e "Flowchart \t" $flowchart / 20
  echo -e "Output\t\t" $output / 15
  echo -e "Cover & Analysis" $coveranal / 10
  echo -e "Source code"
  echo -e "logic\t\t" $sourcelogic / 10
  echo -e "comments\t" $sourcecomments / 10
  echo -e "vars\t\t" $sourcevars / 10
  echo -e "total\t\t" $total / 100
  echo ; echo

done

