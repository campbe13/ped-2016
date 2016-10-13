#!/bin/bash
# split the cvs marks, for printing
# use as feedback for the students
# pmcampbell

count=0
if [[ $# -ne 1 ]] ; then
    echo We need a .csv file as input
	echo Usage: $(basename $0) marks.csv
	exit
fi 

# file can be anywhere in the tree and 
# and in any case
fn=$(find ./ -iname $1)
echo file found $fn

# use the header line (has name in 0,0)
line=$(head -n 1 $fn)

firstline=$(echo $line|cut -d "," -f 1)
if [[ $firstline != "name" ]] ; then 
   echo $(basename $0)  csv missing name in 0,0 data might not be valid
   exit
fi
col2=$(echo $line|cut -d "," -f 2)
col3=$(echo $line|cut -d "," -f 3)
col4=$(echo $line|cut -d "," -f 4)
col5=$(echo $line|cut -d "," -f 5)
col6=$(echo $line|cut -d "," -f 6)
col7=$(echo $line|cut -d "," -f 7)
col8=$(echo $line|cut -d "," -f 8)
col9=$(echo $line|cut -d "," -f 9)
col10=$(echo $line|cut -d "," -f 10)
	 

# sort, exclude header line (has name in 0,0
sort $fn |grep -Ev "^name" > marks-sorted.csv

for line in $(cat marks-sorted.csv) ; do
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

  echo -e "$col2 \t" $testrun / 5
  echo -e "$col3 \t" $testdata / 20
  echo -e "$col4 \t" $flowchart / 20
  echo -e "$col8 \t\t" $output / 15
  echo -e "$col9 \t" $coveranal / 10
  echo -e "Source code"
  echo -e "$col6 \t" $sourcelogic / 10
  echo -e "$col5 \t" $sourcecomments / 10
  echo -e "$col7 \t" $sourcevars / 10
  echo -e "$col10\t\t" $total / 100
  echo ; echo

done
echo "Printed out info for $count students"

