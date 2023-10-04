call plug#begin()
Plug '/usr/local/opt/fzf'
Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'editorconfig/editorconfig-vim'
call plug#end()

set autoindent
set autowrite
set background=dark
set backspace=indent,eol,start
set expandtab
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set nobackup
set noswapfile
set nowrap
set nowritebackup
set number
set ruler
set shiftwidth=4
set showmatch
set smartcase
set smartindent
set smarttab
set t_Co=256
set tabstop=4
set viminfo='100,n~/.vim/viminfo

let mapleader=','

map ; :Files<cr>
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-n> :NERDTreeToggle<cr>
nnoremap <leader>. :cnext<cr>
nnoremap <leader>m :cprevious<cr>
nnoremap <leader>nf :NERDTreeFind<cr>
nnoremap <leader><space> :nohlsearch<cr>

nnoremap <leader>a :Ack!<space>
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
  let g:ctrlp_use_caching = 0
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g "" --hidden'
endif

let g:buffergator_viewport_split_policy='B'
let g:buffergator_hsplit_size=10

let $FZF_DEFAULT_COMMAND = 'ag -g ""'

let g:NERDTreeShowHidden=1
let g:NERDTreeQuitOnOpen=1

colorscheme gruvbox
