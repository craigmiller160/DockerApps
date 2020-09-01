#!/bin/bash

if [[ $# -lt 1 ]]; then
	echo "Must provide name of DB to export"
	exit 1
fi

#sudo docker exec postgres pg_dump "$1" -U user --column-inserts --data-only

pod=$(sudo microk8s kubectl get pods | grep postgres) 

sudo microk8s kubectl exec -it $pod -- pg_dump "$1" -U user --column-inserts --data-only
