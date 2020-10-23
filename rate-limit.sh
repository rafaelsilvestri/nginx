#!/bin/bash

while true; do
    RESPONSE=$(curl -o /dev/null -s -w "%{http_code}\n" http://localhost:8082)
    WHEN=$(date +"%T") 
    echo "${WHEN} - ${RESPONSE}"
    sleep 0.5; 
done