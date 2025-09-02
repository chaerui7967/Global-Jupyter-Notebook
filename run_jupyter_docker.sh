#!/bin/bash

docker run -d -p 9999:9999 \
    -v $(pwd)/source:/jupyter \
    --name jupyter jupyter-notebook:0.0.1
