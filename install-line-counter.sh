#!/bin/bash

# verify if sudo
if [ "$EUID" -ne 0 ]
    then echo "The installer needs to be run as sudo."
    exit
fi

LINE_COUNTER_LOCATION="/usr/local/src/"
LINE_COUNTER_REPO="https://github.com/michalszulowski/line-counter"

# install script files
mkdir $LINE_COUNTER_LOCATION
cd $LINE_COUNTER_LOCATION

git clone $LINE_COUNTER_REPO

# add bash command
cd line-counter
mv count-lines.sh /usr/bin/count-lines
chmod u+x /usr/bin/count-lines
