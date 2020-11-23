#!/bin/bash

source ./validator

appsInstallation(){

	apt update
	apt install net-tools -y

	validator
}


