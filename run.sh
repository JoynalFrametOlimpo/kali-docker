#!/bin/sh

docker build -t kali .
clear
sudo chown -R $(whoami): ./src/
docker run -it --init -v "$(pwd)/src:/src" kali /bin/bash
