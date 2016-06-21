set nocompatible

" PATHOGEN: include plugins from directory bundle.
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
" remember to run :Helptags for updating the documentations of every plugin


syntax on
filetype plugin indent on
set modeline
set modelines=5

au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm,*.sls set ft=jinja
au BufNewFile,BufRead *.moin setf moin

"""""""""""""""""""""
" Programming
" """""""""""""""""""
" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"let g:syntastic_python_checkers = ''
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_w = 1
nnoremap <silent> <F5> :SyntasticCheck<CR>

" Taglist
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Update = 1


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

