#!/bin/bash
adults=0
minors=0
for var in $(ls $1)
do
    for file in $(cat $1$var)
    do
        age=$(echo $file | cut -d ":" -f2)
        if [[ $age -ge 18 ]]
        then
        adults=$((adults+1))
        else
        minors=$((minors+1))
        fi
    done
done
echo -e "Совершеннолетних: ${adults}"
echo -e "Несовершеннолетних: ${minors}"
