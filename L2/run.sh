#!/bin/bash
tensorboard --logdir=~/workspace/out/tensorboard/runs/ --host=0.0.0.0 --port=6006 &
jupyter lab --ip=0.0.0.0 --no-browser --allow-root --NotebookApp.iopub_data_rate_limit=1e10
#echo 'export PS1="\e[0;33m[\u@\h \W]\$ \e[m"' >> ~/.bashrc
