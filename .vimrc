execute pathogen#infect()

syntax on

filetype plugin indent on

set term=xterm-256color
let g:lucius_no_term_bg=1
colorscheme lucius
LuciusBlack

set laststatus=2

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

map <F2> :NERDTreeToggle<CR>

set list listchars=tab:\|\ ,trail:.,extends:>

set encoding=utf-8
let g:airline_powerline_fonts = 1

let g:syntastic_javascript_checkers = ['jshint']
