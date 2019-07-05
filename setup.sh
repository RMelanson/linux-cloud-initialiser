#! /bin/bash

# SETUP THE ENVIRONMENT
setupName=setup.sh:
echo $setupName EXECUTING: . ./installs/updateModules.sh
. ./installs/updateSubModules.sh

# UPDATE SUB_MODUAL  
echo $setupName EXECUTING: submodule update --init
git submodule update --init
 
# SETUP RECOVERY  --- TO DO (FIX) ---
echo $setupName EXECUTING: . ./installs/setRecovery.sh
. ./installs/setRecovery.sh

# INSTALL APPS_SERVICE DAEMON
echo "$setupName EXECUTING: ./installs/appServicesBootStrap.sh"
./installs/bootstraps/appServicesBootStrap.sh

# ADD CLOUD_SERVICE SERVICE
echo $setupName EXECUTING: . ./installs/addCloudInitialiserService.sh
. ./installs/addCloudInitialiserService.sh

# START CLOUD_SERVICE SERVICE
echo $setupName EXECUTING: . ./installs/startCloudInitialiserService.sh
. ./installs/startCloudInitialiserService.sh
