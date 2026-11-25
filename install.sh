#!/bin/sh
# New machine: install chezmoi if needed, then apply these dotfiles.
set -eu

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

if ! command -v chezmoi >/dev/null 2>&1; then
    if command -v brew >/dev/null 2>&1; then
        brew install chezmoi
    else
        sh -c "$(curl -fsLS get.chezmoi.io)" -- -b "$HOME/.local/bin"
        PATH="$HOME/.local/bin:$PATH"
    fi
fi

exec chezmoi init --apply --source "$DOTFILES"
