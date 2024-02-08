#!/bin/bash
SESSION="SystemMonitor"
tmux new-session -d -s $SESSION
tmux rename-window 'System Monitor'
tmux split-window -h
tmux split-window -v -t 0
tmux split-window -v -t 2
tmux send-keys -t 0 'htop' C-m
tmux send-keys -t 1 'iotop' C-m
tmux send-keys -t 2 'nmon' C-m
tmux send-keys -t 3 'neofetch' C-m
tmux -2 attach-session -t $SESSION

