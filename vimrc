set nocompatible

" PATHOGEN: include plugins from directory bundle.
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
" remember to run :Helptags for updating the documentations of every plugin


syntax on
filetype plugin indent on

au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm,*.sls set ft=jinja

"""""""""""""""""""""
" Programming
" """""""""""""""""""
" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



"""""""""""""""""""""
" Graphic settings
" Required on terminal with solarized themes
"let g:solarized_termcolors=256
"set t_Co=256
set t_Co=16
let g:solarized_termcolors=16
syntax enable
set background=dark
colorscheme solarized

" Airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

