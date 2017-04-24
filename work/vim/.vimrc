" ----- Carl's Vim settings (For Yahoo Inc.) -----

" ----- Basic Settings -----
if has("syntax")
  syntax on
endif
filetype on
filetype plugin on
filetype indent on

set ai              " Auto indent
set number          " show line numbers
set tabstop=4       " hitting tab produces 4 columns space
set shiftwidth=4    " indent operations produce 4 columns space
set softtabstop=4
set noexpandtab     " don't replace a <tab> with <space>'es
set ruler           " show cursorposition
set cursorline      " highlight current line
set showcmd         " display incomplete commands
set nocompatible
set ignorecase      " ignore cases when searching
set incsearch       " Show search result even if the keyword is still typing
set hlsearch        " highlight searchresult
set scrolloff=4     " keep at least 4 lines above or below the cursor
set history=1000    " keep track of history for 1000 actions
set showmatch
" code folding based on indent and syntax
set foldmethod=indent
set foldmethod=syntax
set nofoldenable    " disable code folding by default
let java_highlight_functions = 1
" ----- Basic Settings -----

" SOLARIZED COLORSCHEME FOR VIM
syntax enable
set background=dark
set t_Co=256
"let g:solarized_termcolors=256
colorscheme solarized
" SOLARIZED COLORSCHEME FOR VIM

" Define the leader prefix and some hotkeys
let mapleader = ","
nmap <leader>w :w!<cr>                      " Write file when press ,+w
map <silent> <leader><CR> :noh<CR>          " Cancel search highlight when press ,+enter

" Quickly insert parenthesis/brackets/etc.:
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i
inoremap $t <><esc>i
" Quickly insert parenthesis/brackets/etc.:

" Supertab support
let g:SuperTabDefaultCompletionType = '<C-x><C-o>'
" Supertab support

" Define the leader prefix and some hotkeys

" PHP CI file settings
au BufRead,BufNewFile *.ci set syntax=php
" PHP CI file settings

" Java file settings
au BufRead,BufNewFile *.java set expandtab
au BufRead,BufNewFile *.java set tabstop=4
au BufRead,BufNewFile *.java set shiftwidth=4
au BufRead,BufNewFile *.java set autoindent
" Java file settings

" --- Airline Status Bar ---
" set status line
set laststatus=2

" font settings
set guifont=Meslo\ LG\ S\ DZ\ Regular\ for\ Powerline:h14
let g:airline_powerline_fonts = 1
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1

" airline theme setting
let g:airline_theme='luna'
" --- Airline Status Bar ---


" --- NERDTree config ---
" open/close NERTDTree
map <leader>m :NERDTreeToggle<CR>
map <leader>nf :NERDTreeFind<cr>

" Show hidden files in NERDTree
let NERDTreeShowHidden=1

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "∆",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
" --- NERDTree config ---

" --- Syntastic config ---
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']

" Please execute the fllowing line if you encounter some problems when git commit after add this block.
" git config --global core.editor $(which vim)
" --- Syntastic config ---

" --- Java Complete2 ---
autocmd FileType java setlocal omnifunc=javacomplete#Complete
" --- Java Complete2 ---

" Install pathogen
execute pathogen#infect()
