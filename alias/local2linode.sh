#! /bin/bash

function local2linode(){
	origin=$1
	destination=$2
	echo "scp dave@45.33.12.30 $origin 'home/dave/$destination'"

	return 0
}

#function linode2local{
#	echo scp dave@45.33.12.30 "home/dave/$2" "$1"
#}



