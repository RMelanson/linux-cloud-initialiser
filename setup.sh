#! /bin/bash
setupName=setup.sh:
# SETUP THE REQUIRED ENVIRONMENT
echo AAAAAAAAAAAAAAAAAAAAAAA
echo $setupName: EXECUTING: . ./env/setEnv.sh
. ./env/setEnv.sh

# SETUP RECOVERY  --- TO DO (FIX) ---
echo AAAAAAAAAAAAAAAAAAAAAAA
#echo $setupName EXECUTING: . ./installs/setRecovery.sh
#. ./installs/setRecovery.sh

# INSTALL APPS_SERVICE DAEMON
echo BBBBBBBBBBBBBBBBBBBBBBB
echo "$setupName EXECUTING: ./installs/appServicesBootStrap.sh"
./installs/bootstraps/appServicesBootStrap.sh

x# ADD CLOUD_SERVICE SERVICE
echo CCCCCCCCCCCCCCCCCCCCCCC
echo $setupName EXECUTING: . ./installs/addCloudInitialiserService.sh
. ./installs/addCloudInitialiserService.sh

# START CLOUD_SERVICE SERVICE
echo DDDDDDDDDDDDDDDDDDDDDDD
echo $setupName EXECUTING: . ./installs/startCloudInitialiserService.sh
. ./installs/startCloudInitialiserService.sh
