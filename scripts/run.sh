#!/bin/bash
# ref: mongodump --host localhost --db rishighan
# run command like so ./run.sh </path/to/dump/>

# if path/to/dump is not empty and contains .bson, do a mongorestore,
# which creates databases, and re-creates indices

args=("$@")
if [ -d ${args[0]} ] && [ -z "$(ls -A ${args[0]})" ]; then
    files=(${args[0]}/*.bson)
        echo "Directory \"${args[0]}\" is empty"
    else
        echo "BSON data found in ${args[0]}, proceeding"
    fi


