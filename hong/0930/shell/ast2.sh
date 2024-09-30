#!/bin/bash
######################
#     *
#    **
#   ***
#  ****
# *****
###############################
MAX=5
for i in $(seq 1 $MAX)
do
    # echo $i
    NUM=$i
    BLACK_NUM=$(expr $MAX - $NUM)
    #echo "$BLACK_NUM : $NUM"
        for j in $(seq 1 $BLACK_NUM)
            do
            echo -n ' '
            done
        for k in $(seq 1 $NUM)
            do
            echo -n "*"
            done
    
    
    
    
    read
    


    

done



