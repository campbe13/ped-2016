#!/bin/bash
# given a directory path and title, rename all files that
# match IMG_[id].jpg to [title]_[timestamp]_[id].jpg

dir=$1
title=$2

# exit if dir or title doesn't exist
if [[ ! -d $dir ]] || [[ -z $title ]]
then
  echo "Usage: $0 [path to dir] [title]"
  exit 1
fi

cd $dir

# do the renaming
for file in IMG_*.jpg
do
  datestamp=$(date -r "$file" +"%Y%m%d")
  new_name=$(echo $file | sed s/IMG/"$title"_$datestamp/)
  echo Moving $file to $new_name
  mv $file $new_name
done

cd -
