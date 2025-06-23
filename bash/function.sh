#!/usr/bin/env bash
#functions
test(){
    name="hello"
    # IFS - expand with "" to prevent seperation usin strings tabs
    echo "hello ${name}"
    echo "hello "${name} #we use {} for formatting the variable properly like appending something after it
    echo "hello $name"
    names="ujjwal ujjwal1 ujjwal2"
    for i in ${names}; do
        echo "$i"
    done
}
# test
###############
if [[ 4 -gt 2 ]]; then
    echo "possible"
fi
#normal while check diff b/w [[]] and []
i=1
while [ $i -le 3 ]; do
    echo $i
    i=$((i+1))
done
# seq keyword
n=5
for i in $(seq 1 $n); do
    echo $i
done
#to include any thing in that file here 
# source file 

#check a file exists before taking any action
file_path="function.sh"
if [[ -f $file_path ]]; then
    echo $file_path
fi
###############
