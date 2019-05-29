#! /bin/bash
setupName=setup.sh:
# SETUP THE REQUIRED ENVIRONMENTt
echo setup.sh: EXECUTING: ./env/setEnv.sh
. ./env/setEnv.sh

# SETUP RECOVERY

# INSTALL $daemon AS A SERVICE
echo $setupName EXECUTING: . ./installs/addAppServices.sh
. ./installs/bootstraps/appServicesBootStrap.sh

# SETUP RECOVERY
echo $setupName EXECUTING: . ./installs/addAppServices.sh
. ./installs/setRecovery.sh

# START $daemon SERVICE
echo $setupName EXECUTING: . ./installs/startAppServices.sh
. ./installs/startAppServices.sh
