#! /bin/bash
setupName=setup.sh:
# SETUP THE REQUIRED ENVIRONMENTt
echo setup.sh: EXECUTING: ./env/setEnv.sh
. ./env/setEnv.sh

# SETUP RECOVERY

# INSTALL $daemon AS A SERVICE
echo $setupName EXECUTING: . ./installs/addAppServices.sh
. ./installs/bootstraps/appServicesBootStrap.sh

#TURN ON $daemon DAEMON
echo $scriptName EXECUTING: chkconfig $daemon on
chkconfig $daemon on
