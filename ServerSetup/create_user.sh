#!/bin/bash

source ./validator.sh

function createUser(){

	adduser "sistema"
	usermod -aG sudo "sistema"
	su - "sistema"

	validator
}

