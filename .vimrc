:set number
:set relativenumber
:set autoindent
:set tabstop=2
:set shiftwidth=4
:set smarttab
:set softtabstop=2
:set mouse=a
:set noswapfile
:set background=dark

call plug#begin()

Plug 'tmsvg/pear-tree'
Plug 'preservim/nerdtree'

call plug#end()


nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
:let g:NERDTreeWinSize=25

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

autocmd FileType text,markdown let b:vcm_tab_complete = 'dict'
execute pathogen#infect()
syntax on

filetype plugin indent on
set completeopt=menuone,longest,preview

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

set clipboard=unnamed
set clipboard=unnamedplus

vnoremap <C-c> :w !xclip -selection clipboard
nnoremap <C-v> :r !xclip -selection clipboard -o

