#!/bin/bash

function validator(){

	if [ "$?" -eq "0" ]
	
		then
			echo "Comando ejecutado con éxito"

		else
			echo "El comando fallo"
			exit 1
	fi
}
