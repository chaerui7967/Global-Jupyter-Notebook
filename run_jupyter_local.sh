#!/bin/bash


jupyter notebook --ip=0.0.0.0 --port=9999 --no-browser --NotebookApp.token='' --NotebookApp.password='' --notebook-dir="$(pwd)"

