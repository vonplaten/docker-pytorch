#!/bin/bash
kill -9 $(fuser 6006/tcp 2>/dev/null)
rm -rf ~/workspace/out/tensorboard/runs/ && mkdir ~/workspace/out/tensorboard/runs/