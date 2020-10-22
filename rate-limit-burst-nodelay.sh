#!/bin/bash

INTERVAL=$1

while true; do
    RESPONSE=$(curl -o /dev/null -s -w "%{http_code}\n" http://localhost:8085)
    WHEN=$(date +"%T") 
    echo "${WHEN} - ${RESPONSE}"
    sleep ${INTERVAL:-0.5}; 
done