#!/bin/bash

# all the keyboard mappings
cp .xbindkeysrc ~/
cp .caps_super.xmodmap ~/

# all the vim config files
mkdir -p ~/.vim
cp .vimrc ~/
cp -r .vim/* ~/.vim

# all the i3 files
mkdir -p ~/.i3
cp -r .i3/* ~/.i3/
