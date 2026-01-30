#!/bin/bash

# example of for loops

for (( num=1; num<=90; num++ ))
do
    rmdir "demo$num" 
done

 
# for (( num=1; num<=5; num++ )); 
# do
#     rmdir "demo$num"
# done