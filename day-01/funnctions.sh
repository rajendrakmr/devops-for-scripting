#!/bin/bash

function is_loyal(){

    read -p "$1 ne mood ke kisko dekha: " moodke
    read -p "$1 ke dayababhi ke parti Love Percentag: " loveper


    if [[ $moodke == "daya bhahi" ]];
    then
        echo "$1 bahut loyal hai."
    elif [[ $loveper -ge 100 ]];
    then    
        echo "$1 ka Pyar percentage hai: $loveper"

    else
        echo "$1 bhai loyal nahi hai!"
    fi

}

is_loyal