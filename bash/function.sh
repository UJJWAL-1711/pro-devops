#!/usr/bin/env bash
set -e
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

#backup with retry

bkp(){
    if [  -f ${1}  ];then        
        mkdir backupdir && cd backupdir
        cp -r ${1} .
        tar -czvf ../backup.tar.gz *
        echo "clean $1"
        rm -rf ../backupdir
        echo $?
    else
        echo "${1} not a valid dir" 
    fi
}

for j in $(seq 1 3);do
    echo "try $j"
    bkp "/Users/ujjwalrastogi/workspace/scripts/pro-devops/bash/file-check.sh"
    if [ $? -eq 0  ];then
        break
    fi
done
########### 
#command line arguments
#use $1 ... $n for args
###########
#PID
#kill -15 graceful, kill -9 foce kill, strace -tfp to trace syscalls by a proces, parent, child
######
#built in commands are faster than those which have binaries - prepackaged in shell 
#as they dont create seperate processes for that task - can be checked with strace
#use type command : 
type echo
type /usr/bin/echo

# to time a command in linux use time
time cat function.sh
# how to get PID of current bash session
prep -o bash
#for all - use man bash man builtin

#[[]] vs []
#[] ~ test 
# man [ vs man test

