filetype on                                " Enable it first for git exit code
filetype off                               " Disable for Vundle load
set rtp+=~/.vim/bundle/Vundle.vim             " Add Vundle subdir to run time path
call vundle#rc()                           " Enable vundle

Plugin 'VundleVim/Vundle.vim'              " Let vundle manage vundle

Plugin 'christoomey/vim-tmux-navigator'    " See readme for tmux.conf reqs
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'                " Git wrapper
Plugin 'tpope/vim-surround'                " Manage surrounding marks, tags
Plugin 'tpope/vim-repeat'                  " Support repeat for plugin actions
Plugin 'tpope/vim-commentary'              " Manage comments
Plugin 'tpope/vim-speeddating'
Plugin 'scrooloose/syntastic'              " Linter
Plugin 'scrooloose/nerdtree'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'moll/vim-bbye'                     " Better buffer closing
Plugin 'pangloss/vim-javascript'
Plugin 'klen/python-mode'
Plugin 'JuliaLang/julia-vim'
Plugin 'tmhedberg/matchit'                 " Extends % matching
"Plugin 'sjl/gundo.vim'                    " Could be interesting later

filetype plugin indent on       " (Re)enable filetype and indenting

let g:gitgutter_enabled = 0     " Toggle gitgutter on with <leader>gt

