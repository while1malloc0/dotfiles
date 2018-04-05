#!/usr/bin/env bash

set -euo pipefail

echo "[1/5] Linking vimrc"
ln -sf "$PWD/vimrc" "$HOME/.vimrc"

echo "[2/5] Installing nvimrc"
mkdir -p $HOME/.config/nvim
echo "source ~/.vimrc" >> $HOME/.config/nvim/init.vim

echo "[3/5] Installing neovim Python 2 package"
pip install neovim >/dev/null 2>&1 || true

echo "[4/5] Installing neovim Python 3 package"
pip3 install neovim >/dev/null 2>&1 || true

echo "[5/5] Installing NeoVim Plugins"
nvim +PlugInstall +qall
