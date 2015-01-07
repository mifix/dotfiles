" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" =============== NeoBundle Initialization ===============
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }

" ================ Load Plugin ========================

source ~/.vim/config/custom/settings.vim
for plugin_file in split(glob('~/.vim/config/**/*/*.vim'), '\n')
     exe 'silent source' plugin_file
endfor
source ~/.vim/config/custom/mail.vim
source ~/.vim/config/programming/ruby_rails/endwise.vim
source ~/.vim/custom.vim

" ================ General Config ====================

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink

set autoread                    "Reload files changed outside vim

set autowrite                   " Save on buffer switch

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on
set t_Co=256
set synmaxcol=100
set encoding=utf-8
set termencoding=utf-8

" ================ Search Settings  =================

set incsearch        "Find the next match as we type the search
set hlsearch         "Hilight searches by default
set ignorecase       "Ignore case in search patterns.
set smartcase        "Override the 'ignorecase' option if the search
                     "pattern contains upper case characters.
set viminfo='100,f1  "Save up to 100 marks, enable capital marks

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

if has("gui_running")
  " Display tabs and trailing spaces visually
  set list listchars=tab:\ \ ,trail:·
  " Show tabs and end of line markers - not enabled per default
  set listchars=tab:▸\ ,eol:¬
endif
set nolist


set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Paste  ========================
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode


" NeoBundleCheck
