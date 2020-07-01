#!/bin/bash
read X
read Y
read Z
if [[($X == $Y) && ($Y == $Z)]]
then 
   echo EQUILATERAL
elif [[($X == $Y) || ($Y == $Z) || ($X == $Z)]]
then
  echo ISOCELES
else
   echo SCALENE
fi
