#! /bin/sh

name=`echo $1 | cut -d: -f1`
num=`echo $1 | cut -d: -f2`

if [[ $name == $num ]]; then
    vim $name
else
    vim $name +$num
fi
