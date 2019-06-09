#!/bin/bash

function help {
    echo "Available Docker Applications"
    echo "  postgres = The Postgresql database and PGAdmin tool"
    echo ""
    echo "Options"
    echo "  build = Build the app, don't start it"
    echo "  start = Start the app. Will build it if it has not already been built."
    echo ""
    echo "Example Command"
    echo "  bash run.sh postgres start"
    echo ""
    echo "Other"
    echo "  help = The help menu"
}

function run_app {
    bash setup.sh
    sudo -E docker-compose up -d
}

function build_app {
	sudo -E docker-compose build
}

function build_or_run {
	case $1 in
		"build") build_app ;;
		"start") run_app ;;
		*)
			echo "Error! Invalid command: $1. Try using the 'help' option for more details"
		;;
	esac
}

if [[ $# -ne 2 ]] && [[ $1 != "help" ]]; then
    echo "Error! Invalid number of arguments. Please see the help menu"
    exit 1
fi

case $1 in
    "postgres")
        cd Postgres
        build_or_run $2
    ;;
    "help")
        help
    ;;
    *)
        echo "Error! Invalid app name: $1. Try using the 'help' option for more details"
        exit 1
    ;;
esac
