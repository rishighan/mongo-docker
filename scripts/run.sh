#!/bin/bash
# ref: mongodump --host localhost --db rishighan
# run command like so ./run.sh </path/to/dump/> <mongo database>

# if path/to/dump is not empty and contains .bson,
# do a mongorestore, which creates databases, and re-creates indices

# args
# 0 -> directory of db dump
# 1 -> database name

args=("$@")
if [ -d ${args[0]} ] ; then
    if [ -z "$(ls -A ${args[0]})" ]; then
        echo "Directory \"${args[0]}\" is empty"
    else
        echo -e "==> ${args[0]} is not empty, proceeding..."
        count=`ls ${args[0]} -1 *.bson 2>/dev/null | wc -l`
        if [ $count != 0 ]; then
            echo "==> BSON files found..."
            mongorestore --drop -d ${args[1]} ${args[0]}
        fi
    fi
fi



