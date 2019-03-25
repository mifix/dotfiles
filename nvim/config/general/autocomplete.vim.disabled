" Slim, Fast and Hackable Completion Framework for Neovim.
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANTE: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect


" suppress the annoying 'match x of y', 'The only match' and 'Pattern not
" found' messages
set shortmess+=c

" CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
inoremap <c-c> <ESC>

" When the <Enter> key is pressed while the popup menu is visible, it only
" hides the menu. Use this mapping to close the menu and also start a new
" line.
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" wrap existing omnifunc
" Note that omnifunc does not run in background and may probably block the
" editor. If you don't want to be blocked by omnifunc too often, you could
" add 180ms delay before the omni wrapper:
"  'on_complete': ['ncm2#on_complete#delay', 180,
"               \ 'ncm2#on_complete#omni', 'csscomplete#CompleteCSS'],
au User Ncm2Plugin call ncm2#register_source({
        \ 'name' : 'css',
        \ 'priority': 9,
        \ 'subscope_enable': 1,
        \ 'scope': ['css','scss'],
        \ 'mark': 'css',
        \ 'word_pattern': '[\w\-]+',
        \ 'complete_pattern': ':\s*',
        \ 'on_complete': ['ncm2#on_complete#omni', 'csscomplete#CompleteCSS'],
        \ })

" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-tagprefix'
Plug 'ncm2/ncm2-ultisnips'
Plug 'ncm2/ncm2-match-highlight'
let g:ncm2#match_highlight = 'sans-serif-bold'



" Language Server
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'ncm2/ncm2-vim-lsp'















" "Plug 'autozimu/LanguageClient-neovim', {'tag': 'binary-*-x86_64-apple-darwin'}
" Plug 'autozimu/LanguageClient-neovim', {'tag': 'binary-*-x86_64-unknown-linux-musl'}

" augroup LanguageClient_config
"   autocmd!
"   autocmd User LanguageClientStarted setlocal signcolumn=yes
"   autocmd User LanguageClientStopped setlocal signcolumn=auto
" augroup END


" let g:LanguageClient_serverCommands = {
"     \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
"     \ 'go': ['go-langserver'],
"     \ }

" let g:enabledFileTypes = ['rust', 'go']

" augroup LanguageClientConfig
"   autocmd!

"   " <leader>ld to go to definition
"   " autocmd FileType rust nnoremap <buffer> <localleader>ld :call LanguageClient_textDocument_definition()<cr>
"   execute "autocmd FileType " . join(g:enabledFileTypes, ",") . "  noremap <buffer> <localleader>ld :call LanguageClient_textDocument_definition()<cr>"

"   " <leader>lf to autoformat document
"   " autocmd FileType rust nnoremap <buffer> <localleader>lf :call LanguageClient_textDocument_formatting()<cr>
"   execute "autocmd FileType " . join(g:enabledFileTypes, ",") . "  noremap <buffer> <localleader>lf :call LanguageClient_textDocument_formatting()<cr>"

"   " " <leader>lh for type info under cursor
"   " autocmd FileType javascript,python,typescript,json,css,less,html,reason nnoremap <buffer> <leader>lh :call LanguageClient_textDocument_hover()<cr>
"   " " <leader>lr to rename variable under cursor
"   " autocmd FileType javascript,python,typescript,json,css,less,html,reason nnoremap <buffer> <leader>lr :call LanguageClient_textDocument_rename()<cr>
"   " " <leader>lc to switch omnifunc to LanguageClient
"   " autocmd FileType javascript,python,typescript,json,css,less,html,reason nnoremap <buffer> <leader>lc :setlocal omnifunc=LanguageClient#complete<cr>
"   " " <leader>ls to fuzzy find the symbols in the current document
"   " autocmd FileType javascript,python,typescript,json,css,less,html,reason nnoremap <buffer> <leader>ls :call LanguageClient_textDocument_documentSymbol()<cr>

"   " " Use as omnifunc by default
"   " autocmd FileType javascript,python,typescript,json,css,less,html,reason setlocal omnifunc=LanguageClient#complete
" augroup END


" " Fast, Extensible, Async Completion Framework for Neovim

" Plug 'roxma/nvim-completion-manager'
" if !has('nvim')
"     Plug 'roxma/vim-hug-neovim-rpc'
" endif

" " don't give |ins-completion-menu| messages.  For example,
" " '-- XXX completion (YYY)', 'match 1 of 2', 'The only match',
" set shortmess+=c


" " Use <TAB> to select the popup menu:
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" " Here is an example for expanding snippet in the popup menu with <Enter> key.
" imap <expr> <CR>  (pumvisible() ?  "\<c-y>\<Plug>(expand_or_nl)" : "\<CR>")
" imap <expr> <Plug>(expand_or_nl) (cm#completed_is_snippet() ? "\<C-u>":"\<CR>")


" " Word from other buffers
" Plug 'fgrsnau/ncm-otherbuf'


