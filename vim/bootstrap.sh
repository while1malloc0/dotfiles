#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")/.." || exit

echo "[1/5] Linking vimrc"
ln -sf "$PWD/vim/vimrc" "$HOME/.vimrc"

echo "[2/5] Installing nvimrc"
mkdir -p $HOME/.config/nvim
ln -sf "$HOME/.vimrc" "$HOME/.config/nvim/init.vim"

echo "[3/5] Installing neovim Python 2 package"
pip install neovim >/dev/null 2>&1 || true

echo "[4/5] Installing neovim Python 3 package"
pip3 install neovim >/dev/null 2>&1 || true

echo "[5/5] Installing NeoVim Plugins"
nvim +PlugInstall +qall
