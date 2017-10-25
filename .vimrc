"Trevor Colby
"10/18/2017
".vimrc custom file


"*********************** Key Bindings *********************************************
"\ev to split window and open .vimrc
"\sv to source (run+update) .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

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
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

"************************ Tagbar Vim Keybinding  *************************************
nmap <F8> :TagbarToggle<CR>

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
	autocmd FileType vim setlocal commentstring=\"\ %s
endif

"************************** Vim-Css3-Syntax ***************************************
" augroup VimCSS3Syntax
"   autocmd!
"   autocmd FileType css setlocal iskeyword+=-
" augroup END
"note: has side effects

"************************** Current Vim Theme *************************************
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
""If you're using tmux version 2.2 or later, you can remove the outermost
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

"************************** Dein Plugin Manager ***********************************
"Following all plugin related
if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/bundles/repos/github.com/Shougo/dein.vim "path to dein.vim

if dein#load_state('~/.vim/bundles')
  call dein#begin('~/.vim/bundles')

  "Here is a list of all the plugins: just put the github "author/pluginname"
  call dein#add('~/.vim/bundles/repos/github.com/Shougo/dein.vim')
    "------------------Macro Generated Dein Plugin Calls---------------------
  call dein#add('Shougo/denite.nvim') "   denite	       
  call dein#add('Shougo/neocomplete.vim') "neocomplete
  call dein#add('tpope/vim-sensible')    
  call dein#add('vim-airline/vim-airline')  "vim-airline
  call dein#add('vim-airline/vim-airline-themes')  "vim-airline-themes
  call dein#add('luochen1990/rainbow')   "rainbow-parantheses
  call dein#add('joshdick/onedark.vim') "onedark
  call dein#add('tpope/vim-commentary') "commentary
  call dein#add('hail2u/vim-css3-syntax') "css3-syntax
  call dein#add('tpope/vim-dispatch') "dispatch
  call dein#add('editorconfig/editorconfig-vim') "Editorconfig
  call dein#add('kana/vim-fakeclip') "fakeclip
  call dein#add('tpope/vim-fugitive') "fugitive
  call dein#add('tpope/vim-git') "  git
  call dein#add('airblade/vim-gitgutter') "  gitgutter
  call dein#add('pangloss/vim-javascript') "  javascript
  call dein#add('elzr/vim-json') "  json
  call dein#add('tpope/vim-markdown') "  markdown
  call dein#add('nelstrom/vim-markdown-folding') "  markdown-folding
  call dein#add('scrooloose/nerdtree') "  nerdtree
  call dein#add('tpope/vim-repeat') "  repeat
  call dein#add('jpalardy/vim-slime') "  slime
  call dein#add('honza/vim-snippets') "  snippets
  call dein#add('tpope/vim-surround') "  surround
  call dein#add('scrooloose/syntastic') "  syntastic
  call dein#add('majutsushi/tagbar') "  tagbar
  call dein#add('ericpruitt/tmux.vim') "  tmux
  call dein#add('Quramy/tsuquyomi') "  tsuquyomi
  call dein#add('leafgarland/typescript-vim') "  typescript-vim
  call dein#add('tpope/vim-unimpaired') "  unimpaired
  call dein#add('Shougo/vimproc.vim') "  vimproc
  call dein#add('tpope/vim-rhubarb') "  rubarb


  call dein#end()  
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
