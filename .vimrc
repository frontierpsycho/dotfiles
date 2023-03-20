execute pathogen#infect()

map <F2> :NERDTreeToggle<CR>
map <F3> :NERDTreeFind<CR>
let NERDTreeIgnore = ['\.swp$']
let g:NERDTreeWinSize = 40

function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

set mouse=a

set belloff=all

let g:lucius_no_term_bg = 1
colorscheme lucius
LuciusDark

set laststatus=2

" set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

set encoding=utf-8
let g:airline_powerline_fonts = 1

"let g:gitgutter_realtime = 0
"let g:gitgutter_eager = 0

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1

let g:vim_json_syntax_conceal = 0
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

" let g:indentLine_setConceal = 0

let g:rustfmt_autosave = 1

let g:ale_lint_on_text_changed = 'never'
let g:ale_hover_to_floating_preview = 1

let g:airline#extensions#whitespace#enabled = 1

let g:vimspector_enable_mappings = 'VISUAL_STUDIO'

set fillchars+=vert:\ 
set list listchars=tab:\|\ ,trail:.,extends:>

set timeoutlen=750
set ttimeoutlen=100
set updatetime=750

filetype plugin indent on

syntax on

" autocmd VimEnter * call StartUp()
