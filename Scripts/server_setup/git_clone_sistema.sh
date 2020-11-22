#!/bin/bash

source ./validator.sh

function gitCloneSistema(){

	git clone https://github/carlosseda/sistema.git
	chmod +x ~/sistema/scripts/*
	
	validator
}

