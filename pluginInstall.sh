#!/bin/bash

PLUGIN_DIR="$HOME/.vim/bundles"
INSTALL_DIR="${PLUGIN_DIR}/repos/github.com/Shougo/dein.vim"

echo "Do you give this script permission to:"
echo " - Alter your .vimrc file"
echo " - Install dein plugin manager"
echo " - Create a temporary file called commands.ex"
echo "Answer: (y/n)"
#if check permission continue else quit script
read -n 1 permission
if ('$permission' == 'y'); then
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

    echo "Would you like this script to install Trevor Colby\'s preferred plugins?"
    echo "(y/n)"
    read -n 1 pluginChoice
    if ('$pluginChoice' == 'y'); then
	    echo "Adding plugins to .vimrc and using dein dark powered"
	    echo "plugin manager to install them"
            echo "  \"-------------------- Your Plugins Here ----------------" >> $HOME/.vimrc
            echo "  call dein#add('Shougo/neosnippet.vim')" >> $HOME/.vimrc
            echo "  call dein#add('Shougo/neosnippet-snippets')" >> $HOME/.vimrc
            echo "\"------------------Macro Generated Dein Plugin Calls--------" >> $HOME/.vimrc
            echo "call dein#add('Shougo/denite.nvim') \"   denite " >> $HOME/.vimrc 
            echo "call dein#add('Shougo/neocomplete.vim') \"neocomplete" >> $HOME/.vimrc
            echo "call dein#add('tpope/vim-sensible')   "  >> $HOME/.vimrc
            echo "call dein#add('vim-airline/vim-airline')  \"vim-airline" >> $HOME/.vimrc
            echo "call dein#add('vim-airline/vim-airline-themes')  \"vim-airline-themes" >> $HOME/.vimrc
            echo "call dein#add('luochen1990/rainbow')   \"rainbow-parantheses" >> $HOME/.vimrc
            echo "call dein#add('joshdick/onedark.vim') \"onedark" >> $HOME/.vimrc
            echo "call dein#add('tpope/vim-commentary') \"commentary" >> $HOME/.vimrc
            echo "call dein#add('hail2u/vim-css3-syntax') \"css3-syntax" >> $HOME/.vimrc
            echo "call dein#add('tpope/vim-dispatch') \"dispatch" >> $HOME/.vimrc
            echo "call dein#add('editorconfig/editorconfig-vim') \"Editorconfig" >> $HOME/.vimrc
            echo "call dein#add('kana/vim-fakeclip') \"fakeclip" >> $HOME/.vimrc
            echo "call dein#add('tpope/vim-fugitive') \"fugitive" >> $HOME/.vimrc
            echo "call dein#add('tpope/vim-git') \"  vim-git" >> $HOME/.vimrc
            echo "call dein#add('airblade/vim-gitgutter') \"  gitgutter" >> $HOME/.vimrc
            echo "call dein#add('pangloss/vim-javascript') \"  javascript" >> $HOME/.vimrc
            echo "call dein#add('elzr/vim-json') \"  json" >> $HOME/.vimrc
            echo "call dein#add('tpope/vim-markdown') \"  markdown" >> $HOME/.vimrc
            echo "call dein#add('nelstrom/vim-markdown-folding') \"  markdown-folding" >> $HOME/.vimrc
            echo "call dein#add('scrooloose/nerdtree') \"  nerdtree" >> $HOME/.vimrc
            echo "call dein#add('tpope/vim-repeat') \"  repeat" >> $HOME/.vimrc
            echo "call dein#add('jpalardy/vim-slime') \"  slime" >> $HOME/.vimrc
            echo "call dein#add('honza/vim-snippets') \"  snippets" >> $HOME/.vimrc
            echo "call dein#add('tpope/vim-surround') \"  surround" >> $HOME/.vimrc
            echo "call dein#add('scrooloose/syntastic') \"  syntastic" >> $HOME/.vimrc
            echo "call dein#add('majutsushi/tagbar') \"  tagbar" >> $HOME/.vimrc
            echo "call dein#add('ericpruitt/tmux.vim') \"  tmux" >> $HOME/.vimrc
            echo "call dein#add('Quramy/tsuquyomi') \"  tsuquyomi" >> $HOME/.vimrc
            echo "call dein#add('leafgarland/typescript-vim') \"  typescript-vim" >> $HOME/.vimrc
            echo "call dein#add('tpope/vim-unimpaired') \"  unimpaired" >> $HOME/.vimrc
            echo "call dein#add('Shougo/vimproc.vim') \"  vimproc" >> $HOME/.vimrc
            echo "call dein#add('tpope/vim-rhubarb') \"  rubarb" >> $HOME/.vimrc
    fi

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

else
	    echo "Permission not granted, ending setup"
fi
