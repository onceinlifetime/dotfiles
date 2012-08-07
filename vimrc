set nocompatible               " be iMproved
filetype off                   " required!
let mapleader = ","

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-markdown'
Bundle 'rstacruz/sparkup'
Bundle 'bbommarito/vim-slim'
Bundle 'tsaleh/vim-align'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'L9'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ervandew/supertab'
Bundle 'rodjek/vim-puppet'
Bundle 'kchmck/vim-coffee-script'
Bundle 'briandoll/change-inside-surroundings.vim'
Bundle 'Command-T'
Bundle 'scrooloose/nerdtree'
Bundle 'matchit.zip'
Bundle 'ruby-matchit'
Bundle 'VimClojure'
Bundle 'SearchComplete'
Bundle 'bufexplorer.zip'
Bundle 'lunaru/vim-less'
Bundle 'jeetsukumaran/vim-filesearch'

filetype plugin indent on

syntax on

set bg=dark
colorscheme desert

set hidden
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smarttab
set ruler
set number
set nowrap
set encoding=utf8
set fileencoding=utf8
set smartcase
set hlsearch
set cursorline
set laststatus=2
set showcmd
set showmode
set noerrorbells
set novisualbell
set backspace=indent,eol,start
set completeopt=menu,preview
set autoread
set autowrite
set showfulltag
set shiftround
set guioptions-=T
set gdefault
set incsearch
set showmatch
set wildignore+=*.o,*.obj,.git,tmp/**,build/**,coverage/**

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" enable per-directory .vimrc files
set exrc
" disable unsafe commands in local .vimrc files
set secure

map <C-t> <Esc>:CommandT<CR>
map <C-s> <Esc>:w<CR>
map <C-S> <Esc>:w<CR>

if has("gui_macvim")
  set guifont=Menlo:h14
else
  set guifont=Monospace\ 11.5
endif

" Delete trailing white space when saving
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

au BufRead,BufNew *.coffee set ft=coffee
au BufRead,BufNew *.html.erb set ft=eruby.html
au BufRead,BufNew Gemfile set ft=ruby
au BufRead,BufNew Guardfile set ft=ruby
au BufRead,BufNew Procfile set ft=ruby
au BufRead,BufNew *.ru set ft=ruby

au FocusLost * :CommandTFlush
au BufWrite * :call DeleteTrailingWS()
