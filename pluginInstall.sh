#!usr/bin/env bash
echo "This needs to be updates/fixed please abort"
PLUGIN_DIR="usr/local/bin/vim/bundles"
INSTALL_DIR="${PLUGIN_DIR}/repos/github.com/Shougo/dein.vim"

echo "Do you give this script permission to:"
echo " - Alter your .vimrc file: note this will append, recommended fresh start"
echo " - Install dein plugin manager"
echo " - Create a temporary file called commands.ex"
echo "Answer: (y/n)"
#if check permission continue else quit script
read -n -r 1 permission 
echo "Permission read: $permission"
if [ "$permission" = "y" ]; then
#cd ~/.vim
#mkdir -p bundles
#cd bundles
#curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
#sh ./installer.sh $PLUGIN_DIR

#*********************** CREATE VIMRC OPTION *********************************
    echo "Would you like this script to create a .vimrc for you?"
    read -n -r 1 VIMRCCHECK
    if [ "$VIMRCCHECK" = "y" ]; then
	    touch "$HOME/.vimrc"
    fi

#*********************** GENERAL VIM SETTINGS OPTION *********************************

    echo "Would you like to add Trevor Colby's general vim settings to your .vimrc?"
    echo "Note: if you don't have a \"$HOME/.vimrc\" this will create one as well as "
    printf "a \"$HOME/.vim/bundles\" if you don't have one."
    read -n -r 1 GENSET
    if [ "$GENSET" = "y" ]; then
    echo "ADDING GENERAL VIM SETTINGS"
    mkdir -p "$HOME/.vim/bundles"
    if [[ ! -e $HOME/.vimrc ]]; then
	    touch "$HOME/.vimrc"
    fi

# HERE ARE THE GNERAL VIM SETTINGS **************************************************** 
    {
    printf "\"Trevor Colby";
    printf "\"10/18/2017";
    printf "\".vimrc custom file";
    } >> "$HOME/.vimrc"
    
    {
    printf "\"*********************** Key Bindings *********************************************" 
    echo "\\ev to split window and open .vimrc" 
    echo "\"\sv to source (run+update) .vimrc" 
    echo "nnoremap <leader>sv :source \$MYVIMRC<cr>" 
    echo "nnoremap <leader>ev :vsplit \$MYVIMRC<cr>" 
    echo "\"My basic preferences for usability/visual" 
    echo "set number" 
    echo "set mouse=a" 
    echo "\"Commands to setup dein.vim from Shougo" 
    echo "\"Plugin Manager" 
    echo "\"https://github.com/Shougo/dein.vim" 
    echo "" 
    echo "\"************************ Neocomplete startup *************************************" 
    echo "\" let g:neocomplete#enable_at_startup = 1" 
    echo "\"Note: everything below this point is just a suggested setting and a trial not" 
    echo "\"sure if I like it: may just stick with single line command above" 
    echo "\"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!" 
    echo "\" Disable AutoComplPop." 
    echo "let g:acp_enableAtStartup = 0" 
    echo "\" Use neocomplete." 
    echo "let g:neocomplete#enable_at_startup = 1" 
    echo "\" Use smartcase." 
    echo "let g:neocomplete#enable_smart_case = 1" 
    echo "\" Set minimum syntax keyword length." 
    echo "let g:neocomplete#sources#syntax#min_keyword_length = 3" 
    echo "" 
    echo "\" Define dictionary." 
    echo "let g:neocomplete#sources#dictionary#dictionaries = {" 
    echo "    \ 'default' : ''," 
    echo "    \ 'vimshell' : \$HOME.'/.vimshell_hist'," 
    echo "    \ 'scheme' : \$HOME.'/.gosh_completions'" 
    echo "        \ }" 
    echo "" 
    echo "\" Define keyword." 
    echo "if !exists('g:neocomplete#keyword_patterns')" 
    echo "    let g:neocomplete#keyword_patterns = {}" 
    echo "endif" 
    echo "let g:neocomplete#keyword_patterns['default'] = '\h\w*'" 
    echo "" 
    echo "\" Plugin key-mappings." 
    echo "inoremap <expr><C-g>     neocomplete#undo_completion()" 
    echo "inoremap <expr><C-l>     neocomplete#complete_common_string()" 
    echo "" 
    echo "\" Recommended key-mappings." 
    echo "\" <CR>: close popup and save indent." 
    echo "inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>" 
    echo "function! s:my_cr_function()" 
    echo "  return (pumvisible() ? \"\<C-y>\" : \"\" ) . \"\<CR>\"" 
    echo " \" For no inserting <CR> key." 
    echo "\"return pumvisible() ? \"\<C-y>\" : \"\<CR>\"" 
    echo "endfunction" 
    echo "\" <TAB>: completion." 
    echo "inoremap <expr><TAB>  pumvisible() ? \"\<C-n>\" : \"\<TAB>\"" 
    echo "\" <C-h>, <BS>: close popup and delete backword char." 
    echo "inoremap <expr><C-h> neocomplete#smart_close_popup().\"\<C-h>\"" 
    echo "inoremap <expr><BS> neocomplete#smart_close_popup().\"\<C-h>\"" 
    echo "\" Close popup by <Space>." 
    echo "\"inoremap <expr><Space> pumvisible() ? \"\<C-y>\" : \"\<Space>\"" 
    echo "" 
    echo "\" AutoComplPop like behavior." 
    echo "\"let g:neocomplete#enable_auto_select = 1" 
    echo "" 
    echo "\" Shell like behavior(not recommended)." 
    echo "\"set completeopt+=longest" 
    echo "\"let g:neocomplete#enable_auto_select = 1" 
    echo "\"let g:neocomplete#disable_auto_complete = 1" 
    echo "\"inoremap <expr><TAB>  pumvisible() ? \"\<Down>\" : \"\<C-x>\<C-u>\"" 
    echo "" 
    echo "\" Enable omni completion." 
    echo "autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS" 
    echo "autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags" 
    echo "autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS" 
    echo "autocmd FileType python setlocal omnifunc=pythoncomplete#Complete" 
    echo "autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags" 
    echo "" 
    echo "\" Enable heavy omni completion." 
    echo "if !exists('g:neocomplete#sources#omni#input_patterns')" 
    echo "  let g:neocomplete#sources#omni#input_patterns = {}" 
    echo "endif" 
    echo "\"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'" 
    echo "\"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'" 
    echo "\"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'" 
    echo "" 
    echo "\" For perlomni.vim setting." 
    echo "\" https://github.com/c9s/perlomni.vim" 
    echo "let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'" 
    echo "" 
    echo "\"************************ Tagbar Vim Keybinding  *************************************" 
    echo "nmap <F8> :TagbarToggle<CR>" 
    echo "" 
    echo "\"************************ Air-Line preferences ************************************" 
    echo "" 
    echo "\"Auto display buffers when one tab open" 
    echo "let g:airline#extensions#tabline#enabled = 1" 
    echo "" 
    echo "\"Theme Choice" 
    echo "let g:airline_theme='onedark'" 
    echo "" 
    echo "\"FONT SETUP" 
    echo "let g:airline_powerline_fonts = 1" 
    echo "" 
    echo "if !exists('g:airline_symbols')" 
    echo "	    let g:airline_symbols = {}" 
    echo "    endif" 
    echo "" 
    echo "   \" unicode symbols" 
    echo "let g:airline_left_sep = '»'" 
    echo "let g:airline_left_sep = '▶'" 
    echo "let g:airline_right_sep = '«'" 
    echo "let g:airline_right_sep = '◀'" 
    echo "let g:airline_symbols.linenr = '␊'" 
    echo "let g:airline_symbols.linenr = '␤'" 
    echo "let g:airline_symbols.linenr = '¶'" 
    echo "let g:airline_symbols.branch = '⎇'" 
    echo "let g:airline_symbols.paste = 'ρ'" 
    echo "let g:airline_symbols.paste = 'Þ'" 
    echo "let g:airline_symbols.paste = '∥'" 
    echo "let g:airline_symbols.whitespace = 'Ξ'" 
    echo "    \"" 
    echo "\" airline symbols" 
    echo "let g:airline_left_sep = ''" 
    echo "let g:airline_left_alt_sep = ''" 
    echo "let g:airline_right_sep = ''" 
    echo "let g:airline_right_alt_sep = ''" 
    echo "let g:airline_symbols.branch = ''" 
    echo "let g:airline_symbols.readonly = ''" 
    echo "let g:airline_symbols.linenr = ''" 
    echo ""
    echo "\"************************** RainBow Parantheses ***********************************" 
    echo "\"Really need to find a reliable version of this plugin: weird issues with" 
    echo "\"running on startup and failing to enable [<({ all on startup" 
    echo "" 
    echo "\"************************** Vim Commentary ****************************************" 
    echo "\"" 
    echo "\"File type commenting style modification test" 
    echo "if !exists(\"autocommands_loaded\")" 
    echo "	let autocommands_loaded = 1" 
    echo "	autocmd FileType vim setlocal commentstring=\"\ %s" 
    echo "endif" 
    echo "" 
    echo "\"************************** Vim-Css3-Syntax ***************************************" 
    echo "\" augroup VimCSS3Syntax" 
    echo "\"   autocmd!" 
    echo "\"   autocmd FileType css setlocal iskeyword+=-" 
    echo "\" augroup END" 
    echo "\"note: has side effects" 
    echo "" 
    echo "\"************************** Current Vim Theme *************************************" 
    echo "\"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux." 
    echo "\"\"If you\'re using tmux version 2.2 or later, you can remove the outermost" 
    echo "\"\$TMUX check and use tmux's 24-bit color support" 
    echo "\"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more" 
    echo "\"information.)" 
    echo "\"" 
    echo "if (empty(\$TMUX))" 
    echo "  if (has(\"nvim\"))" 
    echo "\"For Neovim 0.1.3 and 0.1.4 <https://github.com/neovim/neovim/pull/2198 >" 
    echo "	let \$NVIM_TUI_ENABLE_TRUE_COLOR=1" 
    echo "  endif" 
    echo "" 
    echo "  if (has(\"termguicolors\"))" 
    echo "	set termguicolors" 
    echo "  endif" 
    echo "endif" 
    echo "" 
    echo "syntax on" 
    echo "colorscheme onedark" 
    echo "" 
    echo "" 
    } >> "$HOME/.vimrc"
    fi
#*********************** ADDING DEIN PLUGIN TO .VIMRC  *********************************

    {
    echo "\"---------------------Dein Plugin Manager------------------------" 
    echo "if &compatible" 
    echo "  set nocompatible               \" Be iMproved" 
    echo "endif" 
    echo "" 
    echo "\" Required:" 
    echo "set runtimepath+=$INSTALL_DIR" 
    echo "" 
    echo "\" Required:" 
    echo "if dein#load_state('$PLUGIN_DIR')" 
    echo "  call dein#begin('$PLUGIN_DIR')" 
    
    echo "  \" Let dein manage dein" 
    echo "  \" Required:" 
    echo "  call dein#add('$INSTALL_DIR')" 
    echo "" 
    } >> "$HOME/.vimrc"
    #*********************** PLUGINS PERMISSION *********************************

    echo "Would you like this script to install Trevor Colby's preferred plugins?"
    echo "(y/n)"
    read -n -r 1 pluginChoice
    if [ "$pluginChoice" = "y" ]; then

	    {
	    echo "Adding plugins to .vimrc and using dein dark powered"
	    echo "plugin manager to install them"
            echo "  \"-------------------- Your Plugins Here ----------------" 
            echo "  call dein#add('Shougo/neosnippet.vim')" 
            echo "  call dein#add('Shougo/neosnippet-snippets')" 
            echo "\"------------------Trevor Colby\'s Preferred Dein Plugin Calls--------" 
            echo "  call dein#add('Shougo/denite.nvim') \"   denite " 
            echo "  call dein#add('Shougo/neocomplete.vim') \"neocomplete" 
            echo "  call dein#add('tpope/vim-sensible')   "  
            echo "  call dein#add('vim-airline/vim-airline')  \"vim-airline" 
            echo "  call dein#add('vim-airline/vim-airline-themes')  \"vim-airline-themes" 
            echo "  call dein#add('luochen1990/rainbow')   \"rainbow-parantheses" 
            echo "  call dein#add('joshdick/onedark.vim') \"onedark" 
            echo "  call dein#add('tpope/vim-commentary') \"commentary" 
            echo "  call dein#add('hail2u/vim-css3-syntax') \"css3-syntax" 
            echo "  call dein#add('tpope/vim-dispatch') \"dispatch" 
            echo "  call dein#add('editorconfig/editorconfig-vim') \"Editorconfig" 
            echo "  call dein#add('kana/vim-fakeclip') \"fakeclip" 
            echo "  call dein#add('tpope/vim-fugitive') \"fugitive" 
            echo "  call dein#add('tpope/vim-git') \"  vim-git" 
            echo "  call dein#add('airblade/vim-gitgutter') \"  gitgutter" 
            echo "  call dein#add('pangloss/vim-javascript') \"  javascript" 
            echo "  call dein#add('elzr/vim-json') \"  json" 
            echo "  call dein#add('tpope/vim-markdown') \"  markdown" 
            echo "  call dein#add('nelstrom/vim-markdown-folding') \"  markdown-folding" 
            echo "  call dein#add('scrooloose/nerdtree') \"  nerdtree" 
            echo "  call dein#add('tpope/vim-repeat') \"  repeat" 
            echo "  call dein#add('jpalardy/vim-slime') \"  slime" 
            echo "  call dein#add('honza/vim-snippets') \"  snippets" 
            echo "  call dein#add('tpope/vim-surround') \"  surround" 
            echo "  call dein#add('scrooloose/syntastic') \"  syntastic" 
            echo "  call dein#add('majutsushi/tagbar') \"  tagbar" 
            echo "  call dein#add('ericpruitt/tmux.vim') \"  tmux" 
            echo "  call dein#add('Quramy/tsuquyomi') \"  tsuquyomi" 
            echo "  call dein#add('leafgarland/typescript-vim') \"  typescript-vim" 
            echo "  call dein#add('tpope/vim-unimpaired') \"  unimpaired" 
            echo "  call dein#add('Shougo/vimproc.vim') \"  vimproc" 
            echo "  call dein#add('tpope/vim-rhubarb') \"  rubarb" 
	    } >> "$HOME/.vimrc"
    fi


#*********************** Adding last bit of DEIN manager to .vimrc ********************************

    {
    echo ""
    echo "  \" You can specify revision/branch/tag." 
    echo "  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })" 
    echo "" 
    echo "  \" Required:" 
    echo "  call dein#end()" 
    echo "  call dein#save_state()" 
    echo "endif" 
    echo "" 
    echo "\" Required:" 
    echo "filetype plugin indent on" 
    echo "syntax enable" 
    echo "" 
    echo "\" If you want to install not installed plugins on startup." 
    echo "\"if dein#check_install()" 
    echo "\"  call dein#install()" 
    echo "\"endif" 
    echo "" 
    echo "\"End dein plugin manager-------------------------" 
    echo "" 
    } >> "$HOME/.vimrc"
#*********************** Create Temp commands.ex file for vim to execute dein install *************
    touch commands.ex
    {
    echo "if dein#check_install()" 
    echo "    :call dein#install()" 
    echo "endif" 
    echo ":call dein#update()" 
    echo ":q" 
    }  >> commands.ex


    vim -S "commands.ex"
    rm -f commands.ex
    echo "Cleaning up a bit."
    echo "Dein has been installed and updated."
    
    #*********************** Notify user of neccesary powerline font install for Airline theme ******
    printf "\n"
    printf "\n"
    echo "Please note for powerline style bar to display correctly, some terminals need special fonts to be installed."
    echo "If you want to utilize these, you will need to enable one of them for both ascii and non-ascii characters."
    echo "e.g iTerm2"
    echo "Do you want these optional fonts to be installed automatically?"
    echo "(y/n)"
    read -n -r 1 FONTS

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
