" Autocomplete -- deoplete {
Plug 'Shougo/deoplete.nvim'


" set completeopt+=noinsert
" set completeopt+=noselect


let g:deoplete#enable_at_startup = 1

" Use smartcase.
let g:deoplete#enable_smart_case = 1

" TODO
let g:deoplete#enable_refresh_always=1
let g:deoplete#file#enable_buffer_path=1
let g:deoplete#auto_completion_start_length=2

" let g:deoplete#sources={}
" let g:deoplete#sources._    = ['buffer', 'tag',  'file', 'ultisnips']
" let g:deoplete#sources.ruby = ['buffer', 'tag',  'member', 'file', 'ultisnips']
" let g:deoplete#sources.vim  = ['buffer', 'tag',  'member', 'file', 'ultisnips']
" let g:deoplete#sources['javascript.jsx'] = ['buffer', 'tag',  'member', 'file', 'ultisnips']
" let g:deoplete#sources.css  = ['buffer', 'tag',  'member', 'file', 'omni', 'ultisnips']
" let g:deoplete#sources.scss = ['buffer', 'tag',  'member', 'file', 'omni', 'ultisnips']
" let g:deoplete#sources.go = ['buffer', 'tag',  'member', 'file', 'omni', 'ultisnips']
" }


" Vim plugin for insert mode completion of words in adjacent tmux panes
Plug 'wellle/tmux-complete.vim'
let g:tmuxcomplete#trigger = ''

