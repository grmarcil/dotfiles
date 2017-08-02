call plug#begin('~/.config/nvim/plugged')

"==============================================================================
" Editing Plugins
"------------------------------------------------------------------------------
Plug 'tpope/vim-surround'                " Manage surrounding marks
Plug 'tpope/vim-repeat'                  " Support repeat for plugin actions
Plug 'tpope/vim-commentary'              " Manage comments
Plug 'tmhedberg/matchit'                 " Extends % matching
Plug 'bronson/vim-trailing-whitespace'   " Clean up trailing whitespace
Plug 'junegunn/vim-peekaboo'             " Show register drawer on \" and @
Plug 'moll/vim-bbye'                     " Better buffer closing

"==============================================================================
" Code Quality Plugins
"------------------------------------------------------------------------------
Plug 'w0rp/ale'                          " Asynchronous linting engine
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } "Autocompletion
Plug 'google/vim-maktaba'                " Dependency for vim-codefmt
Plug 'google/vim-codefmt'                " Code formatter
Plug 'google/vim-glaive'                 " Dependency for vim-codefmt
Plug 'ludovicchabant/vim-gutentags'      " Manages tag files

"==============================================================================
" Utility and Misc Plugins
"------------------------------------------------------------------------------
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim' " Requires fzf installed by homebrew
Plug 'christoomey/vim-tmux-navigator'    " See readme for tmux.conf reqs
Plug 'konfekt/fastfold'                  " Don't update folds in insert mode
Plug 'tpope/vim-fugitive'                " Git wrapper
Plug 'tpope/vim-vinegar'                 " Netrw extensions (file browsing)

"==============================================================================
" Language Specific
"------------------------------------------------------------------------------
Plug 'tweekmonster/deoplete-clang2'
Plug 'pangloss/vim-javascript'
Plug 'JuliaLang/julia-vim'
Plug 'zchee/deoplete-jedi'               " Deoplete python source

call plug#end()                          " Automatically calls indent on/syntax enable

"==============================================================================
" Plugin Configuration
"------------------------------------------------------------------------------
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

" Don't run linter while typing
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:ale_linters = {'cpp': ['clang']}
let g:ale_echo_msg_format = '[%linter%, %severity%] %s'

call glaive#Install()
Glaive codefmt plugin[mappings]
