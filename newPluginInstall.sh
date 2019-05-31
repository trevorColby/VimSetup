#!/bin/bash

printf "newPluginInstall 0.0.1
Automated plugin install leveraging Vundle
Creator: Trevor Colby
Last Updated: 12/26/2017"

printf "Do you give this script permission to:
 - Alter your .vimrc file: note this will append, recommended fresh start
 - Install Vundle a vim plugin manager
Answer: (y/n)\n";
#if check permission continue else quit script
read -r -n1 permission 
echo "Permission read: $permission"
if [ "$permission" = "y" ]; then
cd ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#*********************** CREATE VIMRC OPTION *********************************
    echo "Would you like this script to create a .vimrc or overwrite
    an existing one so that we can start fresh? (recommended)"
    read -r -n1 VIMRCCHECK
    if [ "$VIMRCCHECK" = "y" ]; then
	    rm "$HOME/.vimrc"
	    touch "$HOME/.vimrc"
    fi

#*********************** GENERAL VIM SETTINGS OPTION *********************************

    printf "Would you like to add Trevor Colby's general vim settings to your .vimrc?
    Note: This will copy the .vimrc contained in this repository into your local .vimrc
    or if you don't have a \"$HOME/.vimrc\" this will create one (as well as
    a \"$HOME/.vim/bundle (bundle is where Vundle stores your plugins)\")."
    read -r -n1 GENSET
    if [ "$GENSET" = "y" ]; then
    	echo "ADDING GENERAL VIM SETTINGS"

# HERE ARE THE GNERAL VIM SETTINGS **************************************************** 
    	cd $HOME
	git clone https://github.com/trevorColby/VimSetup.git
	cd VimSetup
	cat .vimrc >> "$HOME/.vimrc"
	vim +PluginInstall +qall
	rm -rf $HOME/VimSetup
	mkdir $HOME/.vim/colors
	cp $HOME/.vim/bundle/onedark.vim/colors/onedark.vim $HOME/.vim/colors
    	echo "Vundle has been installed as well as the plugins in your .vimrc"
    fi
    
    #*********************** Notify user of neccesary powerline font install for Airline theme ******
    printf "\n
    Please Note: for powerline style bar to display correctly, some terminals need special fonts to be installed.
    If you want to utilize these, you will need to enable one of them for both ascii and non-ascii characters.
    e.g iTerm2
    Do you want these optional fonts to be installed automatically?
    (y/n)"

    read -r -n1 FONTS
    #if to install powerline fonts for certain terminals (Gets rid of weird formattting issues)
    if [ "$FONTS" = "y" ]; then
    	echo "Installing Fonts: you will need to enable these in your terminal"
    	# clone
    	git clone https://github.com/powerline/fonts.git --depth=1
    	# install
    	cd fonts || exit
    	./install.sh
    	# clean-up a bit
    	cd ..
    	rm -rf fonts
    	echo "Finished installing fonts"
    fi   
else

#********************** IF PERMISSION NOT GRANTED ***********************************************
    echo "Permission not granted, ending setup"
fi
