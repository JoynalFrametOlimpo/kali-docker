#!/bin/sh

docker build -t kali .
clear
docker run -it --init -v "$(pwd)/src:/src" kali /bin/bash
