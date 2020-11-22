#!/bin/bash
source ./validator.sh

function generateSSHKey(){

	ssh-keygen -b 4096 -t rsa -f ~/.ssh/id_rsa -q -N ""
	chmod 0700 ~/.ssh
	touch ~/.ssh/authorized_keys
	chmod 06400 ~/.ssh/authorized_keys
	ssh-add ~/.ssh/id_rsa

	eval $(ssh-agent -s)
	ssh-add ~/.ssh/id_rsa

	echo "eval $(ssh-agent -s)" >> ~/.bashrc
	echo "ssh-add ~/.ssh/id_rsa" >> ~/.bashrc

	validator
}




 
