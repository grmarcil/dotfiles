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
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-eunuch'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'tomtom/tcomment_vim'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'moll/vim-bbye'
"Bundle 'git://git.wincent.com/command-t.git'
"Bundle 'tpope/vim-endwise'
"Bundle 'tpope/vim-rails'
"Bundle 'tpope/vim-markdown'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 1

filetype plugin indent on       " (Re)enable filetype and indenting

"==============================================================================
" Basic Options
"------------------------------------------------------------------------------
let mapleader=","               " Remapped from \"
set encoding=utf-8
set laststatus=2                " Always show status bar
set showcmd                     " display incomplete commands
set hidden
set wildmenu
set wildmode=list:longest,full
set wildignorecase
set scrolloff=1


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
" Easy esc mapping
inoremap jj <Esc>
" Vim&Vigor buffer switching jetpack
nnoremap <leader>l :ls<CR>:b<space>
" Nerdtree shortcut
nnoremap <leader>nt :NERDTree<CR>
" BDelete to close buffers but not windows
nnoremap <leader>bd :Bdelete<CR>
" FixWhitespace shortcut
nnoremap <leader>W :FixWhitespace<CR>
" Kill search highlighting
nnoremap <silent> <leader><space> :noh<CR>

"==============================================================================
" Appearance Options
"------------------------------------------------------------------------------
syntax on
set relativenumber
set number
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode
if exists('+colorcolumn') " Marks the 80th character column
    set colorcolumn=80
endif
colorscheme solarized
set background=dark

" set the cursor to a vertical line in insert mode and a solid block in command mode
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

