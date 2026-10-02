map <F2> :NERDTreeToggle<CR>
map <F3> :NERDTreeFind<CR>
let NERDTreeIgnore = ['\.swp$']
let NERDTreeShowHidden=1
let g:NERDTreeWinSize = 40

function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

" Go to last active tab
au TabLeave * let g:lasttab = tabpagenr()
nnoremap <silent> <leader>t :exe "tabn ".g:lasttab<cr>

set list listchars=tab:\|\ ,trail:.,extends:>

set mouse=a

set incsearch
set hlsearch

set belloff=all

let g:lucius_no_term_bg = 1
colorscheme lucius
LuciusDark

set laststatus=2

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

set encoding=utf-8
let g:airline_powerline_fonts = 1

"let g:gitgutter_realtime = 0
"let g:gitgutter_eager = 0
let g:gitgutter_sign_allow_clobber = 0

let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

let g:vim_json_syntax_conceal = 0

"let g:indentLine_setConceal = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

let g:rustfmt_autosave = 1

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_hover_to_floating_preview = 1
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_set_balloons = 1
let g:ale_fix_on_save = 1

let g:airline_theme='base16'
let g:airline#extensions#whitespace#enabled = 1
let g:airline_section_z = ''
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline_skip_empty_sections = 1
let g:airline_mode_map = {
    \ '__' : '-',
    \ 'n'  : 'NOR',
    \ 'i'  : 'INS',
    \ 'R'  : 'REP',
    \ 'c'  : 'COM',
    \ 'v'  : 'VIS',
    \ 'V'  : 'VIS',
    \ '' : 'VIS',
    \ 's'  : 'S',
    \ }

" inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#pum#select_confirm() : "\<C-g>u\<CR>"

let g:airline#extensions#whitespace#enabled = 1

set fillchars+=vert:\ 

set timeoutlen=750
set ttimeoutlen=100
set updatetime=750

filetype plugin indent on

syntax on

" autocmd VimEnter * call StartUp()
