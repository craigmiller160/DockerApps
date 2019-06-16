#!/bin/bash

if [[ $# -lt 1 ]]; then
	echo "Must provide name of DB to export"
	exit 1
fi

sudo docker exec postgres pg_dump "$1" -U user --column-inserts --data-only
