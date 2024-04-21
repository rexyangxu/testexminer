#!/bin/bash
mkdir exminer
cd exminer
if [ ! -e "qli-Client" ]; 
then
wget -c https://dl.qubic.li/downloads/qli-Client-1.8.10-Linux-x64.tar.gz
tar -zxvf qli-Client-1.8.10-Linux-x64.tar.gz
wget -c https://github.com/exminer/exqiner/releases/download/v0.1.0/exqiner
chmod +x exqiner
minerAlias="$HOSTNAME"
token=$1
echo "{\"Settings\": {\"baseUrl\": \"https://mine.qubic.li/\",\"amountOfThreads\": 1,\"payoutId\": null,\"accessToken\": \"$token\",\"alias\": \"$minerAlias\",\"trainerBinary\":\"exqiner\",\"customRunner\":true,\"serviceLock\":true}}" > appsettings.json
fi 
./qli-Client
