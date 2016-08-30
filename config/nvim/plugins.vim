call plug#begin('~/.config/nvim/plugged')

Plug 'christoomey/vim-tmux-navigator'    " See readme for tmux.conf reqs
Plug 'romainl/flattened'
Plug 'tpope/vim-fugitive'                " Git wrapper
Plug 'tpope/vim-surround'                " Manage surrounding marks, tags
Plug 'tpope/vim-repeat'                  " Support repeat for plugin actions
Plug 'tpope/vim-commentary'              " Manage comments
Plug 'tpope/vim-speeddating'
Plug 'scrooloose/syntastic'              " Linter
Plug 'scrooloose/nerdtree'
Plug 'bronson/vim-trailing-whitespace'
Plug 'moll/vim-bbye'                     " Better buffer closing
Plug 'pangloss/vim-javascript'
Plug 'klen/python-mode'
Plug 'JuliaLang/julia-vim'
Plug 'tmhedberg/matchit'                 " Extends % matching
"Plug 'sjl/gundo.vim'                    " Could be interesting later

call plug#end()

filetype plugin indent on       " (Re)enable filetype and indenting

let g:gitgutter_enabled = 0     " Toggle gitgutter on with <leader>gt

