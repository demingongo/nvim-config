#!/usr/bin/env bash

### Tested on Fedora 37 Workstation
###
### Execute the script as a simple user and NOT as root.
###

## Fail if something went wrong
set -euo pipefail

# Authorize sudo
sudo echo

# Fails if npm is not installed
npm -v

echo
echo -n "Copy dotfiles for neovim ? [y/N] "
read c_answer_neovim
if [[ "$c_answer_neovim" == "y" ]]; then
    cp -r config/nvim ~/.config/
fi

c_answer_neovim_dep="y"
if [[ "$c_answer_neovim" != "y" ]]; then
    echo
    echo -n "Install neovim and its dependencies ? [y/N] "
    read c_answer_neovim_dep
fi

if [[ "$c_answer_neovim_dep" == "y" ]]; then

    # Package managers
    declare -A PACKAGE_INSTALLERS=(
        [dnf]="dnf install neovim gcc-c++ go fzf"
        [pacman]="pacman -S neovim gcc go fzf"
    )

    INSTALL_PKG=''

    for cmd in "${!PACKAGE_INSTALLERS[@]}"
    do
        if ! command -v "$cmd" &> /dev/null
        then
            # echo "$cmd could not be found"		
        else
            # echo "OK, $cmd exists"
            INSTALL_PKG="${PACKAGE_INSTALLERS[$cmd]}"
            break
        fi
    done
    ## Neovim
    #
    # neovim, gcc-c++, go
    #
    if [[ -n INSTALL_PKG ]]; then
	eval sudo "$INSTALL_PKG"
    fi
    #
    # vim-plug: https://github.com/junegunn/vim-plug
    #
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    #
    # ascii-image-converter: https://github.com/TheZoraiz/ascii-image-converter
    #
    go install github.com/TheZoraiz/ascii-image-converter@latest
    #
    # lsp
    #
    npm i -g pyright @angular/language-server vscode-langservers-extracted typescript typescript-language-server yaml-language-server
fi

