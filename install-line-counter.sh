#!/bin/bash

LINE_COUNTER_SRC_DIR="/usr/local/src/line-counter/"

cd $LINE_COUNTER_SRC_DIR 
wget https://github.com/michalszulowski/line-counter/blob/main/count_lines.py
wget https://github.com/michalszulowski/line-counter/blob/main/extensions.txt
wget https://github.com/michalszulowski/line-counter/blob/main/excluded_words.txt

cd /usr/bin/

