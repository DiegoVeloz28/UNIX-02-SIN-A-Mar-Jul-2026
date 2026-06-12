#!/bin/bash
SIGNAL_TO_STOP_FILE="stoploop"
while [[ ! -f "${SIGNAL_TO_STOP_FILE}" ]]; do
echo "The file ${SIGNAL_TO_STOP_FILE} does not yet exis
t..."
sleep 2
done
echo "Checking again in 2 seconds..."
echo "File was found! Exiting..."