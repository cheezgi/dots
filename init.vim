" ░▀█▀░█▀█░▀█▀░▀█▀░░░░█░█░▀█▀░█▄█
" ░░█░░█░█░░█░░░█░░░░░▀▄▀░░█░░█░█
" ░▀▀▀░▀░▀░▀▀▀░░▀░░▀░░░▀░░▀▀▀░▀░▀

set noswapfile

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

let mapleader=" "
let maplocalleader="'"

nmap <silent> <c-n> :noh<cr>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

fu! ToggleCuc()
    if &cuc
        set nocuc
    else
        set cuc
    endif
endfu

nmap <M-c> :call ToggleCuc()<cr>

nnoremap <F5> mryi":let @/ = @"<cr>`r

set fdm=marker

exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

set nu rnu
set cursorline
set nowrap
set synmaxcol=150
set nospell
set noshowmode
set showcmd

set encoding=utf8

set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

set formatoptions-=t
set textwidth=0 wrapmargin=0
set tw=0

call plug#begin('~/.vim/plugged')
Plug 'KabbAmine/yowish.vim'
Plug 'itchyny/lightline.vim'
Plug 'flazz/vim-colorschemes'
Plug 'wting/rust.vim'
Plug 'benbrunton/vl.vim'
Plug 'daveyarwood/vim-alda'
"Plug 'vimwiki/vimwiki'
Plug '0ax1/lxvc'
Plug 'justinmk/vim-sneak'
Plug 'mileszs/ack.vim'
Plug 'vim-scripts/arnoldc.vim'
Plug 'cespare/vim-toml'
Plug 'jceb/vim-orgmode'
Plug 'reedes/vim-wordy'
Plug 'terryma/vim-smooth-scroll'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'scooter-dangle/vim-factor'
Plug 'whatyouhide/vim-gotham'
Plug 'idanarye/vim-smile'
Plug 'hauleth/vim-ketos'
Plug 'kovetskiy/sxhkd-vim'
"Plug 'ap/vim-css-color'
"Plug 'brandonbloom/vim-factor'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-clang'
Plug 'Shougo/neco-vim'
Plug 'sebastianmarkow/deoplete-rust'
call plug#end()

call deoplete#enable()

let g:deoplete#sources#clang#libclang_path = "/usr/lib/x86_64-linux-gnu/libclang.so.1"
let g:deoplete#sources#clang#clang_header = "/usr/include/clang"
let g:deoplete#sources#rust#racer_binary = "/home/j/.cargo/bin/racer"
let g:deoplete#sources#rust#rust_source_path = "/home/j/source/rust/src"
set completeopt-=preview

let g:lightline = { 'colorscheme': 'wombat' }

if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

colo apprentice
