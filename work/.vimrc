if has("syntax")
  syntax on
endif

set number
set ai
set tabstop=4
set shiftwidth=4
set showmatch
set guifont=Source_Code_Pro:h14
set history=100
set ruler

filetype plugin on
filetype indent on

" Let Vim support 256 colors
set t_Co=256

" Solarized colorscheme for Vim
set background=dark
colorscheme solarized

" --- NERDTree config ---
" open/close NERTDTree
map <C-n> :NERDTreeToggle<CR>
" Show hidden files in NERDTree
let NERDTreeShowHidden=1
" Start NERDTree when launch vim
autocmd vimenter * NERDTree
" --- NERDTree config ---

" Install pathogen
execute pathogen#infect()

" Add support for vim session and status bar
set laststatus=2
set statusline=%4*%<\ %1*[%F]
set statusline+=%4*\ %5*[%{&encoding}, " encoding
set statusline+=%{&fileformat}%{\"\".((exists(\"+bomb\")\ &&\ &bomb)?\",BOM\":\"\").\"\"}]%m
set statusline+=%4*%=\ %6*%y%4*\ %3*%l%4*,\ %3*%c%4*\ \<\ %2*%P%4*\ \>
highlight User1 ctermfg=red
highlight User2 term=underline cterm=underline ctermfg=green
highlight User3 term=underline cterm=underline ctermfg=yellow
highlight User4 term=underline cterm=underline ctermfg=white
highlight User5 ctermfg=cyan
highlight User6 ctermfg=white