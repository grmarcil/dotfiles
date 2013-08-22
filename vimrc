" .vimrc
"
" Credits:        http://zanshin.net/2011/11/15/using-vim/
"                 https://gist.github.com/1367558#file_.vimrc
"                 https://github.com/josephlogik/dotfiles/blob/master/vimrc
"
" Dependencies:   https://github.com/gmarik/vundle
"
"==============================================================================
" Use Vim settings rather than vi settings (must be first)
"------------------------------------------------------------------------------
set nocompatible

"==============================================================================
" Setup Vundle and plugins
" Refresh with :BundleInstall
"------------------------------------------------------------------------------
filetype on                                " Enable it first for git exit code
filetype off                               " Disable for Vundle load
set rtp+=~/.vim/bundle/vundle/             " Add Vundle subdir to run time path
call vundle#rc()                           " Enable vundle
Bundle 'altercation/vim-colors-solarized'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'puppetlabs/puppet-syntax-vim'
Bundle 'jeffkreeftmeijer/vim-numbertoggle'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-markdown'

filetype plugin indent on       " (Re)enable filetype and indenting

"==============================================================================
" Basic Options
"------------------------------------------------------------------------------
set encoding=utf-8
let mapleader=","               " Remapped from \"
set laststatus=2                " Always show status bar for powerline
let g:Powerline_symbols = 'fancy'
set showcmd                     " display incomplete commands

"==============================================================================
" Search Options
"------------------------------------------------------------------------------
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " unless they contain at least one capital letter

"==============================================================================
" Key Mappings
"------------------------------------------------------------------------------
inoremap jj <Esc>

"==============================================================================
" Appearance Options
"------------------------------------------------------------------------------
syntax on
set number
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode
" set the cursor to a vertical line in insert mode and a solid block in command mode
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
