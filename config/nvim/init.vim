" init.vim
"
" Credits:        http://zanshin.net/2011/11/15/using-vim/
"                 https://gist.github.com/1367558#file_.vimrc
"                 https://github.com/josephlogik/dotfiles/blob/master/vimrc
"                 http://got-ravings.blogspot.com/ For statusline material
"
" Dependencies:   https://github.com/junegunn/vim-plug
"
"==============================================================================
" Set up vim-plug
" Refresh with :PlugInstall
"------------------------------------------------------------------------------
if filereadable(expand('~/.config/nvim/plugins.vim'))
  source ~/.config/nvim/plugins.vim
endif

"==============================================================================
" Basic Options
"------------------------------------------------------------------------------
let mapleader="\<space>"        " Remapped from \
set encoding=utf-8
set lazyredraw                  " Don't redraw while executing macros
set laststatus=2                " Always show status bar
set showcmd                     " display incomplete commands
set hidden
set wildmenu
set wildmode=list:longest,full
set wildignorecase
set scrolloff=1                 " At least 1 visible line above/below cursor
set nojoinspaces                " J joins sentences with one space not two
set updatetime=1000             " Faster updates w/ commands waiting for user pause

"==============================================================================
" Statusline
"------------------------------------------------------------------------------
if filereadable(expand('~/.config/nvim/statusline.vim'))
  source ~/.config/nvim/statusline.vim
endif

"==============================================================================
" Layout Options
"------------------------------------------------------------------------------
set splitbelow                  " open splits below rather than above
set splitright                  " open splits right rather than left

"==============================================================================
" Search Options
"------------------------------------------------------------------------------
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " unless they contain at least one capital letter
set gdefault                    " replace all one line by default, use /g for single

"==============================================================================
" Appearance Options
"------------------------------------------------------------------------------
syntax on
set relativenumber
set number
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set shiftround                  " use even multiples of shiftwidth with >
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode
if exists('+colorcolumn')       " Marks the 80th character column
    set colorcolumn=80
endif
set textwidth=80
set formatoptions-="t"
colorscheme flattened_dark
set cursorline

" cursor is vertical line in insert mode, solid block in command mode
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

"==============================================================================
" Key Mappings
"------------------------------------------------------------------------------
" Edit/source vimrc
nnoremap <leader>vim :e $MYVIMRC<CR>
nnoremap <leader>sv :so $MYVIMRC<CR>
" Finding with fzf.vim
nnoremap <leader>l :Buffers<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fp :Files
nnoremap <leader>fm :Marks<CR>
nnoremap <leader>fl :BLines<CR>
" Nerdtree shortcut
nnoremap <leader>nt :NERDTreeToggle<CR>
" BDelete to close buffers but not windows
nnoremap <leader>bd :Bdelete<CR>
" FixWhitespace shortcut
nnoremap <leader>w :FixWhitespace<CR>
" Kill search highlighting
nnoremap <silent> <leader>h :noh<CR>
" Sessions
nnoremap <leader>ms :mksession!<CR>
nnoremap <leader>ss :so Session.vim<CR>
nnoremap <leader>gt :GitGutterToggle<CR>
" LaTeX (rubber) macro for compiling
nnoremap <leader>xl :w<CR>:!rubber --pdf --warn all %<CR>

"==============================================================================
" File Type Options
"------------------------------------------------------------------------------
au BufNewFile,BufRead *.ejs setlocal filetype=html
au BufNewFile,BufRead *.ino setlocal filetype=cpp
au BufNewFile,BufRead *.launch setlocal filetype=xml
au Filetype text,tex,latex,gitcommit call SetProseOptions()
au Filetype python nnoremap <leader>y :0,$!yapf<Cr>

"==============================================================================
" Commands
"------------------------------------------------------------------------------
:command! Numtog :call NumberToggle()
:command! BuffDiff :call FileBuffDiff()
:command! PrintPDF :call PrintToPDF()

"==============================================================================
" Functions
"------------------------------------------------------------------------------
function! NumberToggle()
  if(&relativenumber == 1 || &number == 1)
    set norelativenumber
    set nonumber
  else
    set relativenumber
    set number
  end
endfunc

" Turn on spellcheck and hard wrap for commit messages and latex
function! SetProseOptions()
  setlocal spell
  setlocal textwidth=80
  setlocal formatoptions+=tc
endfunc

" Shows diff between buffer and file on disk
" Nice for when you have buffer changes and pulled in remote changes from git
function! FileBuffDiff()
  :w !diff % -
endfunc

function! PrintToPDF()
  :ha > %:r.ps
  :! ps2pdf %:r.ps
  :! rm %:r.ps
endfunc
