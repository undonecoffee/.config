#!/bin/bash

DOTFILES="$HOME/passwords/dotfiles"

symlink() {
    local src="$1"
    local dest="$2"

    if [ -e "$dest" ] || [ -L "$dest" ]; then
        mv "$dest" "$dest-backup"
        echo "Backed up $dest to $dest-backup"
    fi

    ln -s "$src" "$dest"
    echo "Created symlink: $dest -> $src"
}

echo "Starting dotfiles setup..."

symlink "$DOTFILES/nvim" "$HOME/.config/nvim"
symlink "$DOTFILES/firefox.css" "$HOME/.mozilla/firefox/or2e7lin.default-release/chrome/userChrome.css"
symlink "$DOTFILES/sxhkd" "$HOME/.config/sxhkd"
symlink "$DOTFILES/rofi" "$HOME/.config/rofi"
symlink "$DOTFILES/bspwm" "$HOME/.config/bspwm"
symlink "$DOTFILES/kitty" "$HOME/.config/kitty"
symlink "$DOTFILES/tmux" "$HOME/.config/tmux"
symlink "$DOTFILES/yazi" "$HOME/.config/yazi"

echo "All symlinks created!"
