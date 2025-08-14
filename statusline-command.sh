#!/bin/bash

readonly GREEN='\033[92m'
readonly YELLOW='\033[93m'
readonly RED='\033[91m'
readonly RESET='\033[0m'
readonly BOLD='\033[1m'

input=$(cat)

model_name=$(echo "$input" | jq -r '.model.display_name // "Claude"')
current_dir=$(echo "$input" | jq -r '.workspace.current_dir // "."')

# Choose color based on model name
if [[ "$model_name" == *"Opus"* ]]; then
    model_color="${GREEN}"
elif [[ "$model_name" == *"Sonnet"* ]]; then
    model_color="${YELLOW}"
else
    model_color="${RED}"
fi

cd "$current_dir" 2>/dev/null || true

starship_output=$(starship prompt 2>/dev/null)

output_string=" ${BOLD}${model_color}${model_name}${RESET} ${starship_output}"

echo -e "$output_string"
