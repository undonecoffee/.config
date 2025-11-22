#!/bin/bash

FINAL="$HOME/passwords/dotfiles"

symlink() {
    local src="$1"
    local dest="$2"

    if [ -L "$link" ]; then
        echo "removing existing symlink: $link"
        rm "$link"
    elif [ -e "$link" ]; then
        echo "error: $link exists and is not a symlink"
        return 1
    fi

    if [ -e "$dest" ] || [ -L "$dest" ]; then
        mv "$dest" "$dest-backup"
        echo "Backed up $dest to $dest-backup"
    fi

    ln -s "$src" "$dest"
    echo "Created symlink: $dest -> $src"
}

echo "Starting dotfiles setup..."

symlink "$FINAL/nvim" "$HOME/.config/nvim"
symlink "$FINAL/sxhkd" "$HOME/.config/sxhkd"
symlink "$FINAL/bspwm" "$HOME/.config/bspwm"
symlink "$FINAL/kitty" "$HOME/.config/kitty"
symlink "$FINAL/tmux" "$HOME/.config/tmux"
symlink "$FINAL/yazi" "$HOME/.config/yazi"
symlink "$FINAL/firefox.css" "$HOME/.mozilla/firefox/or2e7lin.default-release/chrome/userChrome.css"
symlink "$FINAL/obsidian" "$HOME/passwords/documentation/obsidian/.obsidian"

echo "DONE!!!"
