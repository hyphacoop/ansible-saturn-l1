#!/bin/bash
cd /mnt/data/saturn
export FIL_WALLET_ADDRESS="{{ SATURN_FILECOIN_ADDRESS }}"
export NODE_OPERATOR_EMAIL="{{ SATURN_EMAIL }}"
export SATURN_NETWORK="{{ SATURN_NETWORK }}"
export SATURN_HOME=/mnt/md0/saturn
/mnt/data/saturn/$1 2> /dev/null  >> /mnt/data/saturn/l1-cron.log
