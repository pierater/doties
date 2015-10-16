let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
" let g:ycm_key_list_select_completion=[]
" let g:ycm_key_list_previous_completion=[]
set modeline
set ls=2
set backup
set title
syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
%retab
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
start
colorscheme vividchalk
