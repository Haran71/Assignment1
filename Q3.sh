:#!/bin/bash
clear
wc -c $1 | awk '{print $1}'
let line_count=$(wc -l $1 | awk '{print $1}')
let word_count=$(wc -w $1 | awk '{print $1}')
let line_num=1 
while read line;do
  echo "Line No:$line_num - $(echo $line | wc -w | awk '{print $1}')"
  ((line_num++))
done < $1
grep -wo "[[:alnum:]]\+" $1 | sort | uniq -c > temp.txt
while read line
do
 let con=$(echo $line | awk '{print $1}')
 if [[ $con -gt 1 ]]
 then
    echo "$(echo $line | awk '{print "Word: " $2 " Count of repition: " $1}')"
 fi
done < temp.txt


        

