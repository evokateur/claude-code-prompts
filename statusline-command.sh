#!/bin/bash

# https://starship.rs/faq/#the-docs-say-starship-is-cross-shell-why-isn-t-my-preferred-shell-supported

# Read JSON input from stdin
INPUT=$(cat)

PART1=$(echo "$INPUT" | npx -y @owloops/claude-powerline@latest --theme=tokyo-night)
PART2=$(echo "$INPUT" | npx -y ccusage@latest statusline)

echo -e "$PART1\n$PART2"
