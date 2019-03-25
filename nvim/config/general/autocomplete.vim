Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}


" inoremap <silent><expr> <c-l> coc#refresh()
" TODO: this is a hack - dont know why trigger doesn't work
inoremap  <c-l> <ESC>:call coc#refresh()<CR>A




"" use <tab> for trigger completion and navigate to next complete item
" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~ '\s'
" endfunction

" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()

"
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"
"
"inoremap <expr> <cr> pumvisible() ? "\<C-l>" : "\<C-g>u\<CR>"
"inoremap <expr> <cr> pumvisible() ? "\<C-l>" : "\<CR>"
"
"
"autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
"
"
"autocmd CursorHold * silent call CocActionAsync('highlight')
"
"
"Coc
"
"
"let g:LanguageClient_rootMarkers = {
"      \ 'go': ['.git', 'go.mod'],
"      \ }
"
"let g:LanguageClient_serverCommands = {
"      \ 'go': ['bingo'],
"      \ }
