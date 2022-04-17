#!/bin/bash

## A lancer après une modification
function build_deploy(){
 mvn clean install -DskipTests
 mvn azure-webapp:deploy
}

## Se loguer à Azure avant le premier déploiement
function login(){
  az login
}

function getConfig(){
  mvn azure-webapp:config
}

function getLogs(){
  az webapp log tail --name hello-world-rest-api-elsior --resource-group hello-world-rest-api-rg
}



case "$1" in
build_deploy) build_deploy ;;
login) login ;;
getConfig) getConfig ;;
getLogs) getLogs ;;
*) echo "Command not found"
   exit ;;
esac