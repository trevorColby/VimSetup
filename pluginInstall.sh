#!/bin/bash

PLUGIN_DIR="$HOME/.vim/bundles"
INSTALL_DIR="${PLUGIN_DIR}/repos/github.com/Shougo/dein.vim"

#cd ~/.vim
#mkdir -p bundles
#cd bundles
#curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
#sh ./installer.sh $PLUGIN_DIR
    echo "\"---------------------Dein Plugin Manager------------------------" >> $HOME/.vimrc
    echo "if &compatible" >> $HOME/.vimrc
    echo "  set nocompatible               \" Be iMproved" >> $HOME/.vimrc
    echo "endif" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "\" Required:" >> $HOME/.vimrc
    echo "set runtimepath+=$INSTALL_DIR" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "\" Required:" >> $HOME/.vimrc
    echo "if dein#load_state('$PLUGIN_DIR')" >> $HOME/.vimrc
    echo "  call dein#begin('$PLUGIN_DIR')" >> $HOME/.vimrc
    echo ""
    echo "  \" Let dein manage dein" >> $HOME/.vimrc
    echo "  \" Required:" >> $HOME/.vimrc
    echo "  call dein#add('$INSTALL_DIR')" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "  \" Add or remove your plugins here:" >> $HOME/.vimrc
    echo "  call dein#add('Shougo/neosnippet.vim')" >> $HOME/.vimrc
    echo "  call dein#add('Shougo/neosnippet-snippets')" >> $HOME/.vimrc
    echo ""
    echo "  \" You can specify revision/branch/tag." >> $HOME/.vimrc
    echo "  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "  \" Required:" >> $HOME/.vimrc
    echo "  call dein#end()" >> $HOME/.vimrc
    echo "  call dein#save_state()" >> $HOME/.vimrc
    echo "endif" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "\" Required:" >> $HOME/.vimrc
    echo "filetype plugin indent on" >> $HOME/.vimrc
    echo "syntax enable" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "\" If you want to install not installed plugins on startup." >> $HOME/.vimrc
    echo "\"if dein#check_install()" >> $HOME/.vimrc
    echo "\"  call dein#install()" >> $HOME/.vimrc
    echo "\"endif" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "\"End dein plugin manager-------------------------" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    
    touch commands.ex
    echo "if dein#check_install()" >> commands.ex
    echo "    :call dein#install()" >> commands.ex 
    echo "endif" >> commands.ex  
    echo ":call dein#update()" >>commands.ex
    echo ":q" >>commands.ex
    vim -S "commands.ex"
