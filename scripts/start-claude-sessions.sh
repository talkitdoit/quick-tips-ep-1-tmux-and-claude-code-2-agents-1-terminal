#!/usr/bin/env bash
set -euo pipefail

DIR="$(cd "$(dirname "$0")" && pwd)"

# Kill existing session if it exists
tmux kill-session -t claude-work 2>/dev/null || true

# Create a new detached session with the first pane named 'agent-1'
tmux new-session -d -s claude-work -c "$DIR" -n main

# Name the first pane
tmux select-pane -t claude-work:main.0 -T agent-1

# Split horizontally (side by side) for the second pane
tmux split-window -h -t claude-work:main -c "$DIR"

# Name the second pane
tmux select-pane -t claude-work:main.1 -T agent-2

# Enable pane border status to show pane names
tmux set-option -t claude-work pane-border-status top
tmux set-option -t claude-work pane-border-format " #{pane_title} "

# Select the first pane
tmux select-pane -t claude-work:main.0

# Attach to the session
tmux attach-session -t claude-work
