#!/bin/bash

function help {
    echo "Available Docker Applications"
    echo ""
    echo "postgres = The Postgresql database and PGAdmin tool"
}

function run_app {
    bash setup.sh
    sudo -E docker-compose up -d
}

if [[ $# -ne 1 ]]; then
    echo "Error! Invalid number of arguments"
fi

case $1 in
    "postgres")
        cd Postgres
        run_app
    ;;
    "help")
        help
    ;;
    *)
        echo "Error! Invalid input."
        exit 1
    ;;
esac