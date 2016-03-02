" .vimrc
"
" Credits:        http://zanshin.net/2011/11/15/using-vim/
"                 https://gist.github.com/1367558#file_.vimrc
"                 https://github.com/josephlogik/dotfiles/blob/master/vimrc
"                 http://got-ravings.blogspot.com/ For statusline material
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
if filereadable(expand("~/.vim/bundles.vim"))
  source ~/.vim/bundles.vim
endif

"==============================================================================
" Basic Options
"------------------------------------------------------------------------------
let mapleader="\<space>"        " Remapped from \"
set encoding=utf-8
set lazyredraw                  " Don't redraw while executing macros
set laststatus=2                " Always show status bar
set showcmd                     " display incomplete commands
set hidden
set wildmenu
set wildmode=list:longest,full
set wildignorecase
set scrolloff=1                 " At least 1 visible line above/below cursor
set mouse=a
set nojoinspaces                " J joins sentences with one space not two

"==============================================================================
" Statusline
"------------------------------------------------------------------------------
if filereadable(expand("~/.vim/statusline.vim"))
  source ~/.vim/statusline.vim
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
if exists('+colorcolumn') " Marks the 80th character column
    set colorcolumn=80
endif
colorscheme solarized
set background=dark
set cursorline

" set the cursor to a vertical line in insert mode and a solid block in command mode
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

"==============================================================================
" Key Mappings
"------------------------------------------------------------------------------
" Edit/source vimrc
nnoremap <leader>vim :e $MYVIMRC<CR>
nnoremap <leader>sv :so $MYVIMRC<CR>
" Vim&Vigor buffer switching jetpack
nnoremap <leader>l :ls<CR>:b<space>
" Nerdtree shortcut
nnoremap <leader>nt :NERDTreeToggle<CR>
" BDelete to close buffers but not windows
nnoremap <leader>bd :Bdelete<CR>
" FixWhitespace shortcut
nnoremap <leader>W :FixWhitespace<CR>
" Kill search highlighting
nnoremap <silent> <leader>h :noh<CR>
" Sessions
nnoremap <leader>ms :mksession!<CR>
nnoremap <leader>ss :so Session.vim<CR>

"==============================================================================
" File Type Options
"------------------------------------------------------------------------------
au BufNewFile,BufRead *.ejs setlocal filetype=html
au Filetype text,tex,latex,gitcommit call SetProseOptions()

" Turn off heavy/annoying things from pymode
" Kind of split on whether or not I even need the package - I basically just
" want the best language syntax highlighting, comment handling, and error
" checking I can get with nothing else
let g:pymode_rope_complete_on_dot = 0
let g:pymode_lint_checkers = ['pyflakes']
let g:pymode_lint_cwindow = 0

"==============================================================================
" Commands
"------------------------------------------------------------------------------
:command! Numtog :call NumberToggle()
:command! BuffDiff :call FileBuffDiff()

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

