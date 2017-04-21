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
colorscheme ir_black
set t_Co=256

filetype plugin on
filetype indent on

" Install pathogen
execute pathogen#infect()