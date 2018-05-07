" Neomake -- Asynchronous maker and linter {
" NOTE: needs linters to work.
" See: https://github.com/benekastah/neomake/tree/master/autoload/neomake/makers/ft
Plug 'neomake/neomake' ", { 'on': ['Neomake'] }

" run on every save
augroup neomake
      autocmd! BufWritePost * Neomake!
augroup END

" (Any function calls like these need to come after indicating the end of
" plugins to your plugin manager, e.g. after `call plug#end()` with vim-plug.)
"
" Full config: when writing or reading a buffer, and on changes in insert and
" normal mode (after 1s; no delay when writing).
" call neomake#configure#automake('nrwi', 500)

let g:neomake_verbose=1
" let g:neomake_warning_sign = {
"       \ 'text': '⚠',
"       \ 'texthl': 'WarningMsg',
"       \ }
" let g:neomake_error_sign = {
"       \ 'text': '➤',
"       \ 'texthl': 'ErrorMsg',
"       \ }
" }

" let g:neomake_open_list = 2



" Run Async Shell Commands in Vim 8.0 / NeoVim and Output to Quickfix Window
Plug 'skywind3000/asyncrun.vim'
