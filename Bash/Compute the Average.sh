#!/bin/bash
read n
cnt=$n
sum=0
while [ $cnt -gt 0 ]
do
   read x
   sum=$((sum + x))
   cnt=$((cnt - 1))     
done
printf "%.3f\n" `echo "$sum/$n" | bc -l`
