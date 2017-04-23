if has("syntax")
  syntax on
endif

set encoding=utf-8
set number
set ai
set tabstop=4
set shiftwidth=4
set showmatch
set history=100
set ruler

filetype plugin on
filetype indent on

" SOLARIZED COLORSCHEME FOR VIM
syntax enable
set background=dark
set t_Co=256
"let g:solarized_termcolors=256
colorscheme solarized
" SOLARIZED COLORSCHEME FOR VIM

" Define the leader prefix
let mapleader = ","
" Define the leader prefix

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

" airline theme setting
let g:airline_theme='luna'
" --- Airline Status Bar ---


" --- NERDTree config ---
" open/close NERTDTree
map <leader>m :NERDTreeToggle<CR>
map <leader>nf :NERDTreeFind<cr>

" Show hidden files in NERDTree
let NERDTreeShowHidden=1
" --- NERDTree config ---

" --- Syntastic config ---
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Please execute the fllowing line if you encounter some problems when git commit after add this block.
" git config --global core.editor $(which vim)
" --- Syntastic config ---

" --- Java Complete2 ---
" autocmd FileType java setlocal omnifunc=javacomplete#Complete
" --- Java Complete2 ---

" Install pathogen
execute pathogen#infect()
