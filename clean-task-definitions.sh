#!/bin/bash

for i in $(cat tasks-definitions.txt) ; do
  echo $i
  # http://unix.stackexchange.com/questions/70934/bash-reading-txt-file-and-storing-in-array
  IFS=$'\n' list=($(aws ecs list-task-definitions --family-prefix $i | jq -r '.taskDefinitionArns[]'))
  for j in "${list[@]}"; do
    echo $j
    aws ecs deregister-task-definition --task-definition $j
  done
done
