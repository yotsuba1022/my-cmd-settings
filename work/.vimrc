if has("syntax")
  syntax on
endif

set number
set ai
set tabstop=4
set shiftwidth=4
set showmatch
set history=100
set ruler

filetype plugin on
filetype indent on

" Let Vim support 256 colors
set t_Co=256

" --- Airline Status Bar ---
set guifont=Meslo\ LG\ S\ DZ\ Regular\ for\ Powerline:h14
let g:airline_powerline_fonts = 1
" --- Airline Status Bar ---

" Solarized colorscheme for Vim
set background=dark
colorscheme solarized

" --- NERDTree config ---
" open/close NERTDTree
map <C-n> :NERDTreeToggle<CR>
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
