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
