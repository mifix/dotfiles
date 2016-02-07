" vim: set tw=78 foldmarker={,} foldlevel=0 foldmethod=marker:
" =============================================================
"
" Language agnostic plugins
"
" =============================================================

" Neomake -- Asynchronous maker and linter {
" NOTE: needs linters to work.
" See: https://github.com/benekastah/neomake/tree/master/autoload/neomake/makers/ft
Plug 'benekastah/neomake', { 'on': ['Neomake'] }

" run on every save
augroup neomake
      autocmd! BufWritePost * Neomake
augroup END

let g:neomake_verbose=0
let g:neomake_warning_sign = {
      \ 'text': '❯',
      \ 'texthl': 'WarningMsg',
      \ }
let g:neomake_error_sign = {
      \ 'text': '❯',
      \ 'texthl': 'ErrorMsg',
      \ }
" }

" Autocomplete -- deoplete {
Plug 'Shougo/deoplete.nvim'

let g:deoplete#enable_at_startup = 1

" Use smartcase.
let g:deoplete#enable_smart_case = 1

" TODO
let g:deoplete#enable_refresh_always=1
let g:deoplete#file#enable_buffer_path=1
let g:deoplete#auto_completion_start_length=2

let g:deoplete#sources={}
let g:deoplete#sources._    = ['buffer', 'tag',  'file', 'ultisnips']
let g:deoplete#sources.ruby = ['buffer', 'tag',  'member', 'file', 'ultisnips']
let g:deoplete#sources.vim  = ['buffer', 'tag',  'member', 'file', 'ultisnips']
let g:deoplete#sources['javascript.jsx'] = ['buffer', 'tag',  'member', 'file', 'ultisnips']
let g:deoplete#sources.css  = ['buffer', 'tag',  'member', 'file', 'omni', 'ultisnips']
let g:deoplete#sources.scss = ['buffer', 'tag',  'member', 'file', 'omni', 'ultisnips']
" }

" Automatically closing pair stuff {
Plug 'cohama/lexima.vim'
" }

" Snippets {
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine.
Plug 'honza/vim-snippets'

let g:UltiSnipsExpandTrigger='<C-j>'
let g:UltiSnipsListSnippets='<C-l>'
" }

" Commenting support (gc)
Plug 'tpope/vim-commentary'

" CamelCase and snake_case motions
Plug 'bkad/CamelCaseMotion'

" Heuristically set indent settings
Plug 'tpope/vim-sleuth'
