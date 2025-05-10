#!/bin/bash

set -e

if [ -z "$1" ]; then
  echo "Usage: $0 <project_name>"
  exit 1
fi

PROJECT_NAME="$1"
PROJECT_DIR="$HOME/Projects/$PROJECT_NAME"

if [ ! -d "$PROJECT_DIR" ]; then
  echo "Error: Directory $PROJECT_DIR does not exist."
  exit 1
fi

if tmux has-session -t "$PROJECT_NAME" 2>/dev/null; then
  echo "Attaching to existing tmux session: $PROJECT_NAME"
  tmux attach-session -t "$PROJECT_NAME"
  exit 0
fi

tmux new-session -d -s "$PROJECT_NAME" -c "$PROJECT_DIR" "hx"
tmux new-window -t "$PROJECT_NAME" -c "$PROJECT_DIR" "zsh"
tmux new-window -t "$PROJECT_NAME" -c "$PROJECT_DIR" "lazygit"

tmux attach-session -t "$PROJECT_NAME"

