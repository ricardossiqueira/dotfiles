#!/bin/bash

### Begin tmux config ###
base='s'
index=0
session_name="$base$index"


# If tmux is installed start a new session
# Check if tmux is available
if [ -f "/usr/bin/tmux" ]; then

  # Check if a already exists tmux session exist within the given name
  tmux has-session -t=$session_name 2> /dev/null;

  # Create a new session and attach it if does not exists
  if [[ $? -ne 0 ]]; then
    TMUX='' tmux new-session -d -s $session_name;
    tmux attach-session -t $session_name
  fi

fi
### End tmux config ###