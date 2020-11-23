#!/bin/bash

## SCRIPTS EN USO ##

source ./Actions/apps_installation.sh
source ./Actions/create_user.sh
source ./Actions/create_sshkey.sh

chmod +x ~/ServerSetup/*

createUser
appsInstallation
createSSHKey



