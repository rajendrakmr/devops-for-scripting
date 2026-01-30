#!/bin/bash

#this is Jetha Lal scripts

<< comments
This is intetainment purposed used JethaLal ki character
comments

read -p "Jethalal ne mood ke kisko dekha: " moodke
read -p "Jethalal ke dayababhi ke parti Love Percentag: " loveper


if [[ $moodke == "daya bhahi" ]];
then
    echo "Jetha bahut loyal hai."
elif [[ $loveper -ge 100 ]];
then    
    echo "Jetha ka Pyar percentage hai: $loveper"

else
    echo "Jetha bhai loyal nahi hai!"
fi




