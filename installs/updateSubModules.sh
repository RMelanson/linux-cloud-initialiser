setupName=updateSubModules.sh
echo "$setupName EXECUTING: . ./env/setEnv.sh $*"
. ./env/setEnv.sh $*

echo "$setupName EXECUTING: git submodule update --init"
git submodule update --init

#ToDo 
# For Each Module in Directory $modulesDir
# {
#   Do Git Fetch
#   Do Git Pull
#   Do Git Commit -m "MODULES UPDATE"
#   Do Git Push
# }
# For Linux Cloud Initialiser
# {
#   Do Git Add *
#   Do Git Commit -m "MODULES UPDATE"
#   Do Git Push
# }  
