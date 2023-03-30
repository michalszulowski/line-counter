#!/bin/bash

# verify if sudo
if [ "$EUID" -ne 0 ]
    then echo "The installer needs to be run as sudo."
    exit
fi

LINE_COUNTER_SRC_DIR="/usr/local/src/line-counter/"

# install script files
mkdir $LINE_COUNTER_SRC_DIR
cd $LINE_COUNTER_SRC_DIR 

wget https://github.com/michalszulowski/line-counter/blob/main/count_lines.py
wget https://github.com/michalszulowski/line-counter/blob/main/extensions.txt
wget https://github.com/michalszulowski/line-counter/blob/main/excluded_words.txt

# add bash command
cd /usr/bin/
wget https://github.com/michalszulowski/line-counter/blob/main/count-lines
