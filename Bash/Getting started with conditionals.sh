#!/bin/bash
read letter
if [[($letter == 'Y')||($letter == 'y')]]
then 
    echo "YES"
      elif [[($letter == 'N')||($letter == 'n')]]
      then
      echo "NO"
fi
