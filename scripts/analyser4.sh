#!/bin/bash

min=100
max=0
for var in $(ls $1)
do
    for file in $(cat $1$var)
    do
        name=$(echo $file | cut -d ":" -f1)
        age=$(echo $file | cut -d ":" -f2)
        email=$(echo $file | cut -d ":" -f3)
        if [[ $age -gt $max ]]
        then
            max=$age
            namemax=$name
            emailmax=$email
        fi
        if [[ $age -lt $min ]]
        then
            min=$age
            namemin=$name
            emailmin=$email
        fi
    done
done
echo -e "Данные самого старого: имя: ${namemax} возраст: ${max} почта: ${emailmax}"
echo -e "Данные самого молодого: имя: ${namemin} возраст: ${min} почта: ${emailmin}"
