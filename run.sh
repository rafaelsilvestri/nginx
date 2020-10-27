#!/bin/bash

# usage run.sh <endpoint> <interval>

ENDPOINT=$1
INTERVAL=$2

if [ -z "$1" ] || [ -z "$2" ]
  then
    echo  "Usage: run.sh <endpoint> <interval>"
    exit 0;
fi

RED='\033[0;31m'
NC='\033[0m' # No Color

while true; do
    RESPONSE=$(curl -o /dev/null -s -w "%{http_code}\n" http://localhost:8080${ENDPOINT})
    WHEN=$(date +"%T") 

    if [ "${RESPONSE}" = "503" ]; then
        echo -e "${RED}${WHEN} - Status ${RESPONSE}${NC}"
    else
        echo "${WHEN} - Status ${RESPONSE}"
    fi
    
    sleep ${INTERVAL:-0.5};
done