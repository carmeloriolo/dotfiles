#!/bin/bash

# send-keys "scm" C-m\; \

tmux new -s $1 \; \
  split-window -h \; \
  split-window -v \; \
