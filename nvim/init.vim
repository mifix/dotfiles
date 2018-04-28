" vim: set tw=78 foldmarker={,} foldlevel=0 foldmethod=marker:

"https://github.com/martin-svk/dot-files/blob/master/neovim/init.vim

" ================ Plugin manager Initialization =============== {
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
" }

" ================ Load Plugins ======================== {
"
" Set befor loading plugins
" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
let mapleader=","

let maplocalleader=" "


for plugin_file in split(glob('~/.config/nvim/colorschemes/*.vim'), '\n')
  exe 'silent source' plugin_file
endfor

for plugin_file in split(glob('~/.config/nvim/config/**/*/*.vim'), '\n')
  exe 'silent source' plugin_file
endfor

call plug#end()

" keep this after neobundle#end to ensure all plugins are loaded
" load per host settings
source ~/.config/nvim/custom.vim

" Automatically install missing plugins on startup
if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
  echo "To install missing plugins, run :PlugInstall"
  " :PlugInstall
endif
" }


" ================ General Config ==================== {

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
set synmaxcol=200
set encoding=utf-8
set termencoding=utf-8
set cursorline

" }
" ================ Search Settings  =================

set incsearch        "Find the next match as we type the search
set hlsearch         "Hilight searches by default
set ignorecase       "Ignore case in search patterns.
set smartcase        "Override the 'ignorecase' option if the search
"pattern contains upper case characters.
set viminfo='100,f1  "Save up to 100 marks, enable capital marks

" ================ Swap, Backup and Undo ==============

set noswapfile
set nobackup
set nowb

if has('persistent_undo')
  let undodir = expand("~/.config/nvim/undos/$USER")
  if !isdirectory(undodir)
    call mkdir(undodir)
  endif
  set undodir=~/.config/nvim/undos/$USER/
  set undofile
endif
" }

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

set listchars=trail:·
" set nolist


set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points
" }

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default
" }

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
" }

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1
set nostartofline
" }

" ================ Paste  ========================
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
" }

" ================ Custom Keymaps ==================== {

"! Enter || Save in normal mode
nmap <CR> :w<CR>

"! jj || Switch to normal mode like a boss
inoremap jj <Esc>:w<CR>
inoremap jk <Esc>:w<CR>

"! <C-k> || ->
"! ;; || append ; at end of line and save
inoremap ;;  <ESC>A;<Esc>:w<CR>
" imap <C-k> ->
""! <C-l> || =>
"imap <C-l> <space>=><space>

"inoremap <D-Enter> <C-o>o

" double percentage sign in command mode is expanded
" to directory of current file - http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>

"! <BS> || clear hlsearch
" NOTE mapping to ESC did cause some wierd behaviour
nnoremap <BS> :noh<CR><BS>

"! ,s || toggle spelling mode
nmap <silent> <leader>s :set spell!<CR>

" ========================================
" Location and Quickfix Navigation
" ========================================
nmap <leader>L :lprevious<CR>
nmap <leader>l :lnext<CR>

" ========================================
" Settings for various filetypes
" ========================================

" ========================================
" Buffer navigation
" ========================================


"! ,dd || Close buffer
noremap <silent> ,dd :bw<CR>

nnoremap H :bp<CR>
nnoremap L :bn<CR>

nnoremap <Leader>j :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

"}

" ================ Window/Buffer Management ================ {
"! <C-hjkl> || move between windows
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

"! ,ww || equal size windows
nmap <silent> <leader>ww :wincmd =<CR>

" Window Splitting
"! ,hs || vertical split
nmap <silent> <leader>hs :split<CR>
"! ,vs || vertical split
nmap <silent> <leader>vs :vsplit<CR>
"! ,wc || window close
nmap <silent> <leader>wc :close<CR>
"}

" ================ Enter/Exit ViM ==================== {
" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal g'\"" | endif
endif

" Save on focus lost
" http://stackoverflow.com/questions/2968548/vim-return-to-command-mode-when-focus-is-lost
"au FocusLost,TabLeave * call feedkeys("\<C-\>\<C-n>")
au FocusLost * silent! :wa
":au FocusLost * call PopOutOfInsertMode()

"function! PopOutOfInsertMode()
"if v:insertmode
"feedkeys("\<C-\>\<C-n>")
"endif
":wa
"endfunction

" Change the cursor shape in Vim depending of if in INSERT mode or NORMAL/VISUAL mode."

" :let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" if empty($TMUX)
"   let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"   let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" else
"   let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
"   let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
" endif



" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" }
