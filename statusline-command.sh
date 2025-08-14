#!/bin/bash

# https://starship.rs/faq/#the-docs-say-starship-is-cross-shell-why-isn-t-my-preferred-shell-supported

# Get the status code from the last command executed
STATUS=$?

# Read JSON input from stdin
input=$(cat)

PART1=$(echo "$input" | npx -y @owloops/claude-powerline@latest --theme=tokyo-night)
PART2=$(starship prompt --status=$STATUS)
PART3=$(echo "$input" | npx -y ccusage@latest statusline)
PART4=$(echo "$input" | npx -y ccstatusline@latest)

echo -e "$PART1\n$PART2\n$PART3 | $PART4"
