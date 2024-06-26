#!/bin/bash

# @TODO: change this according to your own prompt
# This is used to find lines connect ssh command in the pane buffer
PROMPT_SEPARATOR="> "

# get current pane buffer size and dimensions
HISTORY_LIMIT=`tmux display-message -p "#{history_limit}"`
VISIBLE_LINES=`tmux display-message -p "#{pane_height}"`

# search last ssh command in pane content
LINE=`tmux capture-pane -p -J -S -$HISTORY_LIMIT -E $VISIBLE_LINES | grep "${PROMPT_SEPARATOR}ssh " | tail -1`
if [ -n "$LINE" ]; then
    echo $LINE | sed "s/.*$PROMPT_SEPARATOR//;"
else
    # fall back to the command that might have been used to create the pane
    # (not necessarily ssh but helpful anyway)
    tmux list-panes -F "#{pane_active} #{pane_start_command}" | grep "^1 " | tail -1 | cut -d ' ' -f2-
fi
