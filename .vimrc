"Trevor Colby
"10/18/2017
".vimrc custom file
"*********************** Key Bindings *********************************************
"\ev to split window and open .vimrc
"\sv to source (run+update) .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>


"Mappings to move around windows
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
nnoremap <C-left> <C-W>h
nnoremap <C-down> <C-W>j
nnoremap <C-up> <C-W>k
nnoremap <C-right> <C-W>l

"Nerdtree maps
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
let NERDTreeShowHidden=1

"Ctr+] to go to definition with YouCompleteMe
" nnoremap <C-]> :YcmCompleter GoToDefinition<cr>
" let g:ycm_goto_buffer_command = 'vertical-split'
" nnoremap <C-0> :YcmCompleter GoToReferences<cr>
"Attempt to resolve following tag issue for <C-]>
"set tags=./tags,tags;$HOME

if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']
let g:ycm_filetype_blacklist={'unite': 1}


"set dd to blackhole register: use x for cut instead

nnoremap x d
vnoremap x d
nnoremap xx dd
vnoremap xx dd
nnoremap d "_d
vnoremap d "_d

"My basic preferences for usability/visual
set number
set mouse=a
"Commands to setup dein.vim from Shougo
"Plugin Manager
"https://github.com/Shougo/dein.vim

"************************ Neocomplete startup *************************************
" let g:neocomplete#enable_at_startup = 1
"Note: everything below this point is just a suggested setting and a trial not
"sure if I like it: may just stick with single line command above
"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
"let g:acp_enableAtStartup = 0
"" Use neocomplete.
"let g:neocomplete#enable_at_startup = 1
"" Use smartcase.
"let g:neocomplete#enable_smart_case = 1
"" Set minimum syntax keyword length.
"let g:neocomplete#sources#syntax#min_keyword_length = 3

"" Define dictionary.
"let g:neocomplete#sources#dictionary#dictionaries = {
"    \ 'default' : '',
"    \ 'vimshell' : $HOME.'/.vimshell_hist',
"    \ 'scheme' : $HOME.'/.gosh_completions'
"        \ }

"" Define keyword.
"if !exists('g:neocomplete#keyword_patterns')
"    let g:neocomplete#keyword_patterns = {}
"endif
"let g:neocomplete#keyword_patterns['default'] = '\h\w*'

"" Plugin key-mappings.
"inoremap <expr><C-g>     neocomplete#undo_completion()
"inoremap <expr><C-l>     neocomplete#complete_common_string()

"" Recommended key-mappings.
"" <CR>: close popup and save indent.
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
"  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
" " For no inserting <CR> key.
""return pumvisible() ? "\<C-y>" : "\<CR>"
"endfunction
"" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"" Close popup by <Space>.
""inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

"" AutoComplPop like behavior.
""let g:neocomplete#enable_auto_select = 1

"" Shell like behavior(not recommended).
""set completeopt+=longest
""let g:neocomplete#enable_auto_select = 1
""let g:neocomplete#disable_auto_complete = 1
""inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

"" Enable omni completion.
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

"" Enable heavy omni completion.
"if !exists('g:neocomplete#sources#omni#input_patterns')
"  let g:neocomplete#sources#omni#input_patterns = {}
"endif
""let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
""let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
""let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

"" For perlomni.vim setting.
"" https://github.com/c9s/perlomni.vim
"let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

"************************ Tagbar Vim Keybinding  *************************************
nmap <F8> :TagbarToggle<CR>

"also need to install following
"npm install --global git+https://github.com/Perlence/tstags.git
"enable Typescript
let g:tagbar_type_typescript = {                                                  
  \ 'ctagsbin' : 'tstags',                                                        
  \ 'ctagsargs' : '-f-',                                                           
  \ 'kinds': [                                                                     
    \ 'e:enums:0:1',                                                               
    \ 'f:function:0:1',                                                            
    \ 't:typealias:0:1',                                                           
    \ 'M:Module:0:1',                                                              
    \ 'I:import:0:1',                                                              
    \ 'i:interface:0:1',                                                           
    \ 'C:class:0:1',                                                               
    \ 'm:method:0:1',                                                              
    \ 'p:property:0:1',                                                            
    \ 'v:variable:0:1',                                                            
    \ 'c:const:0:1',                                                              
  \ ],                                                                            
  \ 'sort' : 0                                                                    
  \ }         

"************************ Air-Line preferences ************************************

"Auto display buffers when one tab open
let g:airline#extensions#tabline#enabled = 1

"Theme Choice
let g:airline_theme='onedark'

"FONT SETUP
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
	    let g:airline_symbols = {}
    endif

   " unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
    "
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"************************** RainBow Parantheses ***********************************
"Really need to find a reliable version of this plugin: weird issues with
"running on startup and failing to enable [<({ all on startup

"************************** Vim Commentary ****************************************
"
"File type commenting style modification test
if !exists("autocommands_loaded")
	let autocommands_loaded = 1
	autocmd FileType vim setlocal commentstring="\ %s
endif

"************************** Vim-Css3-Syntax ***************************************
" augroup VimCSS3Syntax
"   autocmd!
"   autocmd FileType css setlocal iskeyword+=-
" augroup END
"note: has side effects

"************************** Current Vim Theme *************************************
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
""If you\'re using tmux version 2.2 or later, you can remove the outermost
"$TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more
"information.)
"
if (empty($TMUX))
  if (has("nvim"))
"For Neovim 0.1.3 and 0.1.4 <https://github.com/neovim/neovim/pull/2198 >
	let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif

  if (has("termguicolors"))
	set termguicolors
  endif
endif

syntax on
colorscheme onedark

"This is ugly but, dein does not play nicely with YouCompleteMe
"Had to use Vundle just for that one
set nocompatible              " be iMproved, required
filetype off                  " required
let g:ycm_python_binary_path = '/usr/bin/python'
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim' "Install vundle: this needs to be cloned first
Plugin 'Valloric/YouCompleteMe' "This one is tricky needs to have library compiled first
Plugin 'Quramy/tsuquyomi' "  tsuquyomi
Plugin 'Shougo/vimproc.vim' "  vimproc
Plugin 'tpope/vim-sensible'   
Plugin 'vim-airline/vim-airline'  "vim-airline
Plugin 'vim-airline/vim-airline-themes'  "vim-airline-themes
Plugin 'luochen1990/rainbow'   "rainbow-parantheses
Plugin 'joshdick/onedark.vim' "onedark
Plugin 'tpope/vim-commentary' "commentary
Plugin 'hail2u/vim-css3-syntax' "css3-syntax
Plugin 'tpope/vim-dispatch' "dispatch
Plugin 'editorconfig/editorconfig-vim' "Editorconfig
Plugin 'kana/vim-fakeclip' "fakeclip
Plugin 'tpope/vim-fugitive' "fugitive
Plugin 'tpope/vim-git' "  vim-git
Plugin 'airblade/vim-gitgutter' "  gitgutter
Plugin 'pangloss/vim-javascript' "  javascript
Plugin 'elzr/vim-json' "  json
Plugin 'tpope/vim-markdown' "  markdown
Plugin 'nelstrom/vim-markdown-folding' "  markdown-folding
Plugin 'scrooloose/nerdtree' "  nerdtree
Plugin 'tpope/vim-repeat' "  repeat
Plugin 'jpalardy/vim-slime' "  slime
Plugin 'honza/vim-snippets' "  snippets
Plugin 'tpope/vim-surround' "  surround
  "Plugin ('scrooloose/syntastic') "  syntastic
Plugin 'vim-syntastic/syntastic' "syntastic new branch
Plugin 'majutsushi/tagbar' "  tagbar
Plugin 'ericpruitt/tmux.vim' "  tmux
Plugin 'leafgarland/typescript-vim' "  typescript-vim
Plugin 'tpope/vim-unimpaired' "  unimpaired
Plugin 'tpope/vim-rhubarb' "  rubarb
Plugin 'palantir/tslint' " typescript linter
Plugin 'ap/vim-css-color' " css color preview (highlighter)
Plugin 'bitc/vim-hdevtools'
Plugin 'hushicai/tagbar-javascript.vim' "tagbars addon <F8>
  
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



