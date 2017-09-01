#!/bin/bash
# steps:
# check if mongo-seed directory exists
# if it does, do a mongorestore, which creates databases, and re-creates indices
# if not,
args=("$@")
# 1. exact path to mongo seed directory containing BSON dump
# 2.


if [ -d ${args[0]} ]; then
    files=(${args[0]})
    if [ -z "$(ls -A ${args[0]})" ]; then
        echo "Directory is empty"
    else
        echo "Directory not empty, proceeding"
    fi
#    echo "Found seed data in: ${args[0]}"
    #cd into this directory and run mongorestore
    # Control will enter here if $DIRECTORY exists.
fi


