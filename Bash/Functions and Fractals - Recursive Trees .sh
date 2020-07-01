#!/bin/bash
declare -A matrix
for ((i=1;i<=63;i++)) do
    for ((j=1;j<=100;j++)) do
        matrix[$i,$j]='_'
    done
done
i=0
declare -A arr
function update_matrix {
local p1 p2 p3 p4 p5 p6 q1 q2 q3 p11 p12 p13 p14 p15 p16
p1=$1
p2=$(echo $2-1|bc)
p1=$(echo $p1-1|bc)
p3=$(echo 2^$p2|bc)
p4=$(echo 2*$p3|bc)
p5=$(echo $p3/2|bc)
p6=$3
for ((q1=$p3;q1<$p4;q1++)) do
        if [ "$(echo $q1-$p3|bc)" -lt "$p5" ]
            then
            q2=$(echo 18+$p6-$(echo $p5-$(echo $q1-$p3|bc)|bc)|bc)
            q3=$(echo 18+$p6+$(echo $p5-$(echo $q1-$p3|bc)|bc)|bc)
            matrix[$q1,$q2]=1
            matrix[$q1,$q3]=1
            #printf '%s' "$q1 $q2 -- $q1 $q3"
            #echo ""
            else
            matrix[$q1,$(echo 18+$p6|bc)]=1
            #echo $q1 $p6
        fi
done

if [ $p1 -ge 1 ]
then
p11=$p1
p12=$p2
p13=$(echo $p6-$p5|bc)
p14=$(echo $p6+$p5|bc)
p15=$p1
p16=$p2

#echo $p11 $p12 $p6 $p5 $p13
update_matrix $p11 $p12 $p13
#echo $p15 $p16 $p6 $p5 $p14

update_matrix $p15 $p16 $p14
t=4
else
s=2
fi
}
read iteration
if [ $iteration -ge 1 ]
then
    #echo $iteration 6 32
    update_matrix $iteration 6 32
fi
for ((i=1;i<=63;i++)) do
    for ((j=1;j<=100;j++)) do
        printf '%s' "${matrix[$i,$j]}"
    done
    echo ""
done
