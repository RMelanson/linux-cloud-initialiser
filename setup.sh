#! /bin/bash
setupName=setup.sh
echo "$setupName: EXECUTING: . ./env/setEnv.sh $*"
. ./env/setEnv.sh $*

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
