call plug#begin('~/.config/nvim/plugged')

"==============================================================================
" General Plugins
"------------------------------------------------------------------------------
Plug 'tpope/vim-surround'                " Manage surrounding marks, tags
Plug 'tpope/vim-repeat'                  " Support repeat for plugin actions
Plug 'tpope/vim-commentary'              " Manage comments
Plug 'tpope/vim-fugitive'                " Git wrapper
Plug 'tpope/vim-vinegar'                 " Netrw extensions (file browsing)
Plug 'bronson/vim-trailing-whitespace'   " Clean up trailing whitespace
Plug 'neomake/neomake'                   " Linting and make plugin
Plug 'christoomey/vim-tmux-navigator'    " See readme for tmux.conf reqs
Plug 'moll/vim-bbye'                     " Better buffer closing
Plug 'tmhedberg/matchit'                 " Extends % matching
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim' " Requires fzf installed by homebrew
Plug 'ludovicchabant/vim-gutentags'      " Manages tag files
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } "Autocompletion

"==============================================================================
" Language Specific
"------------------------------------------------------------------------------
Plug 'pangloss/vim-javascript'
Plug 'JuliaLang/julia-vim'
Plug 'zchee/deoplete-jedi'

call plug#end()

filetype plugin indent on       " (Re)enable filetype and indenting

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

let g:python_host_prog='/usr/local/bin/python'
let g:python3_host_prog='/usr/local/bin/python3'

autocmd! BufEnter,BufWritePost * Neomake
