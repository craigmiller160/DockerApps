#!/bin/bash

DATA=~/.postgresql/data
INIT=~/.postgresql/init
ADMIN=~/.postgresql/pgadmin

echo "Setting up Postgres environment"

if [[ ! -d $DATA ]]; then
    mkdir -p $DATA
fi

if [[ ! -d $INIT ]]; then
    mkdir -p $INIT
fi

if [[ ! -d $ADMIN ]]; then
    mkdir -p $ADMIN
fi

