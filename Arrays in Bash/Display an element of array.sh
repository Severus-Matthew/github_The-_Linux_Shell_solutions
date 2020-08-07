#!bin/bash
i=0
while read line
do
array[$i]=$line
((i+=1))
done

echo ${array[@]:3:1}
