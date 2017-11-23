set nocompatible

" PATHOGEN: include plugins from directory bundle.
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
" remember to run :Helptags for updating the documentations of every plugin


syntax on
filetype plugin indent on
set modeline
set modelines=5

"au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm,*.sls set ft=jinja
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

" tagbar
nmap <F8> :TagbarToggle<CR>

" NERDtree
let NERDTreeIgnore = ['\.pyc$']

" youcompleteme
let g:ycm_autoclose_preview_window_after_completion=1

"""""""""""""""""""""
" language specific "
""""""""""""""""""""""
"define BadWhitespace before using in a match
highlight BadWhitespace ctermbg=red guibg=darkred
autocmd ColorScheme <buffer> highlight BadWhitespace ctermbg=red guibg=darkred

" python

" flag unwanted spaces and tabs
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\t\+\|\s\+$/

" ===============================================
" Graphic settings
" ===============================================
" If terminal is missing a solarized theme go for 256:
"let g:solarized_termcolors=256
"set t_Co=256
set t_Co=16
let g:solarized_termcolors=16
syntax enable
set background=dark
colorscheme solarized

" Airline
let g:airline_theme='solarized'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
" tabline (top)
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_buffers=1
let g:airline#extensions#tabline#excludes=['NERD_tree', 'NERD_tree_1']
let g:airline#extensions#tabline#formatter='unique_tail_improved'
let g:airline#extensions#tabline#show_close_button=0
let g:airline#extensions#tabline#ignore_bufadd_pat='/\c/*nerd_tree*|tagbar|taglist/'
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = '|'
set laststatus=2

