#!/bin/bash

## SCRIPTS EN USO ##

source ./scripts/apps_installation.sh
source ./scripts/create_user.sh
source ./scripts/create_sshkey.sh


chmod +x ~/scripts/server_setup/*

createUser
appsInstallation
createSSHKey



