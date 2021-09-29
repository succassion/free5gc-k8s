#!/bin/bashi

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
PURPLE='\033[0;35m'
NC='\033[0m' # No Color

echo =====================================
echo Select Monitoring Pod
echo -------------------------------------
echo select below one namesapces
kubectl get ns
echo all-namespaces
echo -------------------------------------
echo Enter: 
read INPUTPOD

if [ "${INPUTPOD}" == "all-namespaces" ];
then
    CMD="kubectl get pods -o wide --all-namespaces"
else
    if [ -z "$INPUTPOD" ];
    then
        CMD="kubectl get pods -o wide --all-namespaces"
    else
        CMD="kubectl get pods -o wide -n ${INPUTPOD}"
    fi
fi

while : 
do 
	clear
	echo -e "Kubenetes Pod Monitoring" "${RED}$INPUTPOD${NC}" "(10sec)" 
        ${CMD}
	sleep 10
done
