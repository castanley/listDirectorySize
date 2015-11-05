#!/bin/sh
output=""
dirlist=`ls`
for i in $dirlist
 do
  size=`ds $i`
  output="$output\n$i:$size"
done
output="Name:Size\n$output"

echo -e $output | column -s ":" -t
