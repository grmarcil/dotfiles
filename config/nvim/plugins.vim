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
Plug 'mbbill/undotree'                   " Visualizer :UndotreeToggle

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
if has('mac')
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim' " Requires fzf installed by homebrew
elseif has('unix')
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
endif
Plug 'christoomey/vim-tmux-navigator'    " See readme for tmux.conf reqs
Plug 'konfekt/fastfold'                  " Don't update folds in insert mode
Plug 'tpope/vim-fugitive'                " Git wrapper
Plug 'scrooloose/nerdtree'               " Directory view drawer
Plug 'Aldlevine/nerdtree-git-plugin'       " Git symbols for nerdtree

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

let g:NERDTreeShowGitStatus = 1

if !executable('ctags')
  let g:gutentags_dont_load = 1
endif

let g:gutentags_cache_dir = '~/.cache/ctags'
" Don't run linter while typing
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:ale_linters = {'cpp': ['clang']}
let g:ale_echo_msg_format = '[%linter%, %severity%] %s'

call glaive#Install()
Glaive codefmt plugin[mappings]
