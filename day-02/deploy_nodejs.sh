#!/bin/bash

#clone the code 


set -euo pipefail

code_clone(){ 
    git clone git@github.com:rajendrakmr/node-todo-cicd.git
}


install_dependency(){
    sudo apt-get update -y
    sudo apt-get install docker.io docker-compose-v2 -y
}

restart_dependency(){
    echo "restarting installed dependency"
    sudo usermod -aG docker $USER
    sudo systemctl enable docker
    sudo systemctl restart docker
}

deploy(){ 
    echo "deploying nodeapp...."
    docker build -t node-app:latest .
    docker run --name nodeapp -p 8000:8000 node-app:latest
}
if [ -d "node-todo-cicd" ]; then  
    cd node-todo-cicd;
else
    echo "------------------------CLONING THE CODE FROM GITHUB.....--------------------"
    code_clone
    cd node-todo-cicd;
    echo "------------------------CODE CLONED --------------------"
fi
 
if ! command -v docker >/dev/null 2>&1; then
    echo "------------------------INSTALLING DEPENDENCY STARTED--------------------"
    install_dependency
    echo "------------------------INSTALLING DEPENDENCY DONE--------------------"
fi 

echo "------------------------DEPLOYMENT STARTED--------------------"
if ! deploy; then
    echo "------------------------DEPLOYMENT FAILED--------------------"
    exit 1
fi
echo "------------------------DEPLOYMENT DONE--------------------"
 
 