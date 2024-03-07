#!/bin/bash

if [ -z "$1" ]
  then
    echo 'You forgot to add the post title'
    echo 'Format is nc.sh [title] [description] [tags]'
    exit 1
else
    now=`date +"%Y-%m-%d"`
    title=$1
    file="$(tr '[:upper:]' '[:lower:]' <<< "$1")"
    description=$2
    echo $'+++\ntitle = "'${title}$'"\ndate = "'${now}$'"\ndescription = "'${description}$'"\ntags = ["'${tags}$'"]\ndraft=true\n+++' > ./content/blog/"${now}-${file// /-}.md"
