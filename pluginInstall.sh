#!/bin/bash

PLUGIN_DIR="$HOME/.vim/bundles"
INSTALL_DIR="${PLUGIN_DIR}/repos/github.com/Shougo/dein.vim"

echo "Do you give this script permission to:"
echo " - Alter your .vimrc file: note this will append, recommended fresh start"
echo " - Install dein plugin manager"
echo " - Create a temporary file called commands.ex"
echo "Answer: (y/n)"
#if check permission continue else quit script
read -n 1 permission 
echo "Permission read: $permission"
if [ "$permission" = "y" ]; then
#cd ~/.vim
#mkdir -p bundles
#cd bundles
#curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
#sh ./installer.sh $PLUGIN_DIR

#*********************** CREATE VIMRC OPTION *********************************
    echo "Would you like this script to create a .vimrc for you?"

    read -n 1 VIMRCCHECK
    if [ "$VIMRCCHECK" = "y" ]; then
	    touch $HOME/.vimrc
    fi

#*********************** GENERAL VIM SETTINGS OPTION *********************************

    echo "Would you like to add Trevor Colby's general vim settings to your .vimrc?"

    read -n 1 GENSET
    if [ "$GENSET" = "y" ]; then
    echo "ADDING GENERAL VIM SETTINGS"

# HERE ARE THE GNERAL VIM SETTINGS **************************************************** 
    echo "\"Trevor Colby" >> $HOME/.vimrc >> $HOME/.vimrc
    echo "\"10/18/2017" >> $HOME/.vimrc
    echo "\".vimrc custom file" >> $HOME/.vimrc
    

    echo "\"*********************** Key Bindings *********************************************" >> $HOME/.vimrc
    echo "\"\ev to split window and open .vimrc" >> $HOME/.vimrc
    echo "\"\sv to source (run+update) .vimrc" >> $HOME/.vimrc
    echo "nnoremap <leader>sv :source \$MYVIMRC<cr>" >> $HOME/.vimrc
    echo "nnoremap <leader>ev :vsplit \$MYVIMRC<cr>" >> $HOME/.vimrc

    echo "\"My basic preferences for usability/visual" >> $HOME/.vimrc
    echo "set number" >> $HOME/.vimrc
    echo "set mouse=a" >> $HOME/.vimrc
    echo "\"Commands to setup dein.vim from Shougo" >> $HOME/.vimrc
    echo "\"Plugin Manager" >> $HOME/.vimrc
    echo "\"https://github.com/Shougo/dein.vim" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "\"************************ Neocomplete startup *************************************" >> $HOME/.vimrc
    echo "\" let g:neocomplete#enable_at_startup = 1" >> $HOME/.vimrc
    echo "\"Note: everything below this point is just a suggested setting and a trial not" >> $HOME/.vimrc
    echo "\"sure if I like it: may just stick with single line command above" >> $HOME/.vimrc
    echo "\"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!" >> $HOME/.vimrc
    echo "\" Disable AutoComplPop." >> $HOME/.vimrc
    echo "let g:acp_enableAtStartup = 0" >> $HOME/.vimrc
    echo "\" Use neocomplete." >> $HOME/.vimrc
    echo "let g:neocomplete#enable_at_startup = 1" >> $HOME/.vimrc
    echo "\" Use smartcase." >> $HOME/.vimrc
    echo "let g:neocomplete#enable_smart_case = 1" >> $HOME/.vimrc
    echo "\" Set minimum syntax keyword length." >> $HOME/.vimrc
    echo "let g:neocomplete#sources#syntax#min_keyword_length = 3" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "\" Define dictionary." >> $HOME/.vimrc
    echo "let g:neocomplete#sources#dictionary#dictionaries = {" >> $HOME/.vimrc
    echo "    \ 'default' : ''," >> $HOME/.vimrc
    echo "    \ 'vimshell' : \$HOME.'/.vimshell_hist'," >> $HOME/.vimrc
    echo "    \ 'scheme' : \$HOME.'/.gosh_completions'" >> $HOME/.vimrc
    echo "        \ }" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "\" Define keyword." >> $HOME/.vimrc
    echo "if !exists('g:neocomplete#keyword_patterns')" >> $HOME/.vimrc
    echo "    let g:neocomplete#keyword_patterns = {}" >> $HOME/.vimrc
    echo "endif" >> $HOME/.vimrc
    echo "let g:neocomplete#keyword_patterns['default'] = '\h\w*'" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "\" Plugin key-mappings." >> $HOME/.vimrc
    echo "inoremap <expr><C-g>     neocomplete#undo_completion()" >> $HOME/.vimrc
    echo "inoremap <expr><C-l>     neocomplete#complete_common_string()" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "\" Recommended key-mappings." >> $HOME/.vimrc
    echo "\" <CR>: close popup and save indent." >> $HOME/.vimrc
    echo "inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>" >> $HOME/.vimrc
    echo "function! s:my_cr_function()" >> $HOME/.vimrc
    echo "  return (pumvisible() ? \"\<C-y>\" : \"\" ) . \"\<CR>\"" >> $HOME/.vimrc
    echo " \" For no inserting <CR> key." >> $HOME/.vimrc
    echo "\"return pumvisible() ? \"\<C-y>\" : \"\<CR>\"" >> $HOME/.vimrc
    echo "endfunction" >> $HOME/.vimrc
    echo "\" <TAB>: completion." >> $HOME/.vimrc
    echo "inoremap <expr><TAB>  pumvisible() ? \"\<C-n>\" : \"\<TAB>\"" >> $HOME/.vimrc
    echo "\" <C-h>, <BS>: close popup and delete backword char." >> $HOME/.vimrc
    echo "inoremap <expr><C-h> neocomplete#smart_close_popup().\"\<C-h>\"" >> $HOME/.vimrc
    echo "inoremap <expr><BS> neocomplete#smart_close_popup().\"\<C-h>\"" >> $HOME/.vimrc
    echo "\" Close popup by <Space>." >> $HOME/.vimrc
    echo "\"inoremap <expr><Space> pumvisible() ? \"\<C-y>\" : \"\<Space>\"" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "\" AutoComplPop like behavior." >> $HOME/.vimrc
    echo "\"let g:neocomplete#enable_auto_select = 1" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "\" Shell like behavior(not recommended)." >> $HOME/.vimrc
    echo "\"set completeopt+=longest" >> $HOME/.vimrc
    echo "\"let g:neocomplete#enable_auto_select = 1" >> $HOME/.vimrc
    echo "\"let g:neocomplete#disable_auto_complete = 1" >> $HOME/.vimrc
    echo "\"inoremap <expr><TAB>  pumvisible() ? \"\<Down>\" : \"\<C-x>\<C-u>\"" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "\" Enable omni completion." >> $HOME/.vimrc
    echo "autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS" >> $HOME/.vimrc
    echo "autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags" >> $HOME/.vimrc
    echo "autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS" >> $HOME/.vimrc
    echo "autocmd FileType python setlocal omnifunc=pythoncomplete#Complete" >> $HOME/.vimrc
    echo "autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "\" Enable heavy omni completion." >> $HOME/.vimrc
    echo "if !exists('g:neocomplete#sources#omni#input_patterns')" >> $HOME/.vimrc
    echo "  let g:neocomplete#sources#omni#input_patterns = {}" >> $HOME/.vimrc
    echo "endif" >> $HOME/.vimrc
    echo "\"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'" >> $HOME/.vimrc
    echo "\"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'" >> $HOME/.vimrc
    echo "\"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "\" For perlomni.vim setting." >> $HOME/.vimrc
    echo "\" https://github.com/c9s/perlomni.vim" >> $HOME/.vimrc
    echo "let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "\"************************ Tagbar Vim Keybinding  *************************************" >> $HOME/.vimrc
    echo "nmap <F8> :TagbarToggle<CR>" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "\"************************ Air-Line preferences ************************************" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "\"Auto display buffers when one tab open" >> $HOME/.vimrc
    echo "let g:airline#extensions#tabline#enabled = 1" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "\"Theme Choice" >> $HOME/.vimrc
    echo "let g:airline_theme='onedark'" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "\"FONT SETUP" >> $HOME/.vimrc
    echo "let g:airline_powerline_fonts = 1" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "if !exists('g:airline_symbols')" >> $HOME/.vimrc
    echo "	    let g:airline_symbols = {}" >> $HOME/.vimrc
    echo "    endif" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "   \" unicode symbols" >> $HOME/.vimrc
    echo "let g:airline_left_sep = '»'" >> $HOME/.vimrc
    echo "let g:airline_left_sep = '▶'" >> $HOME/.vimrc
    echo "let g:airline_right_sep = '«'" >> $HOME/.vimrc
    echo "let g:airline_right_sep = '◀'" >> $HOME/.vimrc
    echo "let g:airline_symbols.linenr = '␊'" >> $HOME/.vimrc
    echo "let g:airline_symbols.linenr = '␤'" >> $HOME/.vimrc
    echo "let g:airline_symbols.linenr = '¶'" >> $HOME/.vimrc
    echo "let g:airline_symbols.branch = '⎇'" >> $HOME/.vimrc
    echo "let g:airline_symbols.paste = 'ρ'" >> $HOME/.vimrc
    echo "let g:airline_symbols.paste = 'Þ'" >> $HOME/.vimrc
    echo "let g:airline_symbols.paste = '∥'" >> $HOME/.vimrc
    echo "let g:airline_symbols.whitespace = 'Ξ'" >> $HOME/.vimrc
    echo "    \"" >> $HOME/.vimrc
    echo "\" airline symbols" >> $HOME/.vimrc
    echo "let g:airline_left_sep = ''" >> $HOME/.vimrc
    echo "let g:airline_left_alt_sep = ''" >> $HOME/.vimrc
    echo "let g:airline_right_sep = ''" >> $HOME/.vimrc
    echo "let g:airline_right_alt_sep = ''" >> $HOME/.vimrc
    echo "let g:airline_symbols.branch = ''" >> $HOME/.vimrc
    echo "let g:airline_symbols.readonly = ''" >> $HOME/.vimrc
    echo "let g:airline_symbols.linenr = ''" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "\"************************** RainBow Parantheses ***********************************" >> $HOME/.vimrc
    echo "\"Really need to find a reliable version of this plugin: weird issues with" >> $HOME/.vimrc
    echo "\"running on startup and failing to enable [<({ all on startup" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "\"************************** Vim Commentary ****************************************" >> $HOME/.vimrc
    echo "\"" >> $HOME/.vimrc
    echo "\"File type commenting style modification test" >> $HOME/.vimrc
    echo "if !exists(\"autocommands_loaded\")" >> $HOME/.vimrc
    echo "	let autocommands_loaded = 1" >> $HOME/.vimrc
    echo "	autocmd FileType vim setlocal commentstring=\"\ %s" >> $HOME/.vimrc
    echo "endif" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "\"************************** Vim-Css3-Syntax ***************************************" >> $HOME/.vimrc
    echo "\" augroup VimCSS3Syntax" >> $HOME/.vimrc
    echo "\"   autocmd!" >> $HOME/.vimrc
    echo "\"   autocmd FileType css setlocal iskeyword+=-" >> $HOME/.vimrc
    echo "\" augroup END" >> $HOME/.vimrc
    echo "\"note: has side effects" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "\"************************** Current Vim Theme *************************************" >> $HOME/.vimrc
    echo "\"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux." >> $HOME/.vimrc
    echo "\"\"If you\'re using tmux version 2.2 or later, you can remove the outermost" >> $HOME/.vimrc
    echo "\"\$TMUX check and use tmux's 24-bit color support" >> $HOME/.vimrc
    echo "\"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more" >> $HOME/.vimrc
    echo "\"information.)" >> $HOME/.vimrc
    echo "\"" >> $HOME/.vimrc
    echo "if (empty(\$TMUX))" >> $HOME/.vimrc
    echo "  if (has(\"nvim\"))" >> $HOME/.vimrc
    echo "\"For Neovim 0.1.3 and 0.1.4 <https://github.com/neovim/neovim/pull/2198 >" >> $HOME/.vimrc
    echo "	let \$NVIM_TUI_ENABLE_TRUE_COLOR=1" >> $HOME/.vimrc
    echo "  endif" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "  if (has(\"termguicolors\"))" >> $HOME/.vimrc
    echo "	set termguicolors" >> $HOME/.vimrc
    echo "  endif" >> $HOME/.vimrc
    echo "endif" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "syntax on" >> $HOME/.vimrc
    echo "colorscheme onedark" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    echo "" >> $HOME/.vimrc
    
    fi
#*********************** ADDING DEIN PLUGIN TO .VIMRC  *********************************

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

    #*********************** PLUGINS PERMISSION *********************************

    echo "Would you like this script to install Trevor Colby's preferred plugins?"
    echo "(y/n)"
    read -n 1 pluginChoice
    if [ "$pluginChoice" = "y" ]; then
	    echo "Adding plugins to .vimrc and using dein dark powered"
	    echo "plugin manager to install them"
            echo "  \"-------------------- Your Plugins Here ----------------" >> $HOME/.vimrc
            echo "  call dein#add('Shougo/neosnippet.vim')" >> $HOME/.vimrc
            echo "  call dein#add('Shougo/neosnippet-snippets')" >> $HOME/.vimrc
            echo "\"------------------Trevor Colby\'s Preferred Dein Plugin Calls--------" >> $HOME/.vimrc
            echo "  call dein#add('Shougo/denite.nvim') \"   denite " >> $HOME/.vimrc 
            echo "  call dein#add('Shougo/neocomplete.vim') \"neocomplete" >> $HOME/.vimrc
            echo "  call dein#add('tpope/vim-sensible')   "  >> $HOME/.vimrc
            echo "  call dein#add('vim-airline/vim-airline')  \"vim-airline" >> $HOME/.vimrc
            echo "  call dein#add('vim-airline/vim-airline-themes')  \"vim-airline-themes" >> $HOME/.vimrc
            echo "  call dein#add('luochen1990/rainbow')   \"rainbow-parantheses" >> $HOME/.vimrc
            echo "  call dein#add('joshdick/onedark.vim') \"onedark" >> $HOME/.vimrc
            echo "  call dein#add('tpope/vim-commentary') \"commentary" >> $HOME/.vimrc
            echo "  call dein#add('hail2u/vim-css3-syntax') \"css3-syntax" >> $HOME/.vimrc
            echo "  call dein#add('tpope/vim-dispatch') \"dispatch" >> $HOME/.vimrc
            echo "  call dein#add('editorconfig/editorconfig-vim') \"Editorconfig" >> $HOME/.vimrc
            echo "  call dein#add('kana/vim-fakeclip') \"fakeclip" >> $HOME/.vimrc
            echo "  call dein#add('tpope/vim-fugitive') \"fugitive" >> $HOME/.vimrc
            echo "  call dein#add('tpope/vim-git') \"  vim-git" >> $HOME/.vimrc
            echo "  call dein#add('airblade/vim-gitgutter') \"  gitgutter" >> $HOME/.vimrc
            echo "  call dein#add('pangloss/vim-javascript') \"  javascript" >> $HOME/.vimrc
            echo "  call dein#add('elzr/vim-json') \"  json" >> $HOME/.vimrc
            echo "  call dein#add('tpope/vim-markdown') \"  markdown" >> $HOME/.vimrc
            echo "  call dein#add('nelstrom/vim-markdown-folding') \"  markdown-folding" >> $HOME/.vimrc
            echo "  call dein#add('scrooloose/nerdtree') \"  nerdtree" >> $HOME/.vimrc
            echo "  call dein#add('tpope/vim-repeat') \"  repeat" >> $HOME/.vimrc
            echo "  call dein#add('jpalardy/vim-slime') \"  slime" >> $HOME/.vimrc
            echo "  call dein#add('honza/vim-snippets') \"  snippets" >> $HOME/.vimrc
            echo "  call dein#add('tpope/vim-surround') \"  surround" >> $HOME/.vimrc
            echo "  call dein#add('scrooloose/syntastic') \"  syntastic" >> $HOME/.vimrc
            echo "  call dein#add('majutsushi/tagbar') \"  tagbar" >> $HOME/.vimrc
            echo "  call dein#add('ericpruitt/tmux.vim') \"  tmux" >> $HOME/.vimrc
            echo "  call dein#add('Quramy/tsuquyomi') \"  tsuquyomi" >> $HOME/.vimrc
            echo "  call dein#add('leafgarland/typescript-vim') \"  typescript-vim" >> $HOME/.vimrc
            echo "  call dein#add('tpope/vim-unimpaired') \"  unimpaired" >> $HOME/.vimrc
            echo "  call dein#add('Shougo/vimproc.vim') \"  vimproc" >> $HOME/.vimrc
            echo "  call dein#add('tpope/vim-rhubarb') \"  rubarb" >> $HOME/.vimrc
    fi


#*********************** Adding last bit of DEIN manager to .vimrc ********************************

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
   
#*********************** Create Temp commands.ex file for vim to execute dein install *************
    touch commands.ex
    echo "if dein#check_install()" >> commands.ex
    echo "    :call dein#install()" >> commands.ex 
    echo "endif" >> commands.ex  
    echo ":call dein#update()" >>commands.ex
    echo ":q" >>commands.ex
    vim -S "commands.ex"
    rm -f commands.ex
else
#********************** IF PERMISSION NOT GRANTED ********************************************
	    echo "Permission not granted, ending setup"
fi
