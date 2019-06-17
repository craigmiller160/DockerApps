#!/bin/bash

DATA=~/.mongodb/data
INIT=~/.mongodb/init
# ADMIN=~/.mongodb/admin

echo "Setting up MongoDB environment"

if [[ ! -d $DATA ]]; then
    mkdir -p $DATA
fi

if [[ ! -d $INIT ]]; then
    mkdir -p $INIT
fi

#if [[ ! -d $ADMIN ]]; then
#    mkdir -p $ADMIN
#fi

