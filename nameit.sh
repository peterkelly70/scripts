#!/bin/bash
for f in $(ls|grep avi); do  
   filename=${f%.*};
   ext=${f##*.}
   #year=$(echo $filename|sed -r 's/([0-9][0-9][0-9][0-9]_)/\1/'); 
   year=$(echo $filename|cut -c1,2,3,4);
   title=$(echo $filename|cut -f2 -d_);
   #title=$(echo $filename|sed -r 's/!([^_]+-[^_]*).*/\1/');
   mv "$f" "$title.$year.$ext"; 
done;
