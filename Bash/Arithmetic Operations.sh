#!/bin/bash
read exp
printf "%0.3f\n" `echo $exp | bc -l`
