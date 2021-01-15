#!/usr/bin/env bash

function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Pleas enter your guess: "
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "Your guess is less than the actual value. Try again!"
        elif [ $number -gt $true_ans ]
        then
            echo "Your guess is greater than the actual value. Try again!"
        else
            echo "Congratulation, you are right! You are good at this!"
        break;
        fi
    done
}
echo "Guess the number of files in the current directory!"
guess
