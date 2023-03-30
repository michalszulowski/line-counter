#!/bin/bash

# verify if sudo
if [ "$EUID" -ne 0 ]
    then echo "The installer needs to be run as sudo."
    exit
fi

LINE_COUNTER_LOCATION="/usr/local/src/"
LINE_COUNTER_REPO="https://github.com/michalszulowski/line-counter"

# install script files
cd $LINE_COUNTER_LOCATION

rm -rf "${LINE_COUNTER_LOCATION}line-counter"
git clone $LINE_COUNTER_REPO

# add bash command
cd line-counter
rm -rf /usr/bin/count-lines
mv count-lines.sh /usr/bin/count-lines
chmod u+x /usr/bin/count-lines
