#!/usr/bin/env bash
# Create XDG dirs and move zsh history to ~/.local/state/zsh/history (once per machine).
set -euo pipefail

mkdir -p "$HOME/.local/state/zsh" "$HOME/.cache/zsh"

old="$HOME/.zsh_history"
new="$HOME/.local/state/zsh/history"
if [[ -f "$old" && ! -e "$new" ]]; then
    mv "$old" "$new"
    echo "zsh history moved to $new"
fi
