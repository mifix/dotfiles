" Simplified clipboard functionality for Vim
Plug 'svermeulen/vim-easyclip'

set clipboard=unnamed

" The Add Mark key (m). Therefore either you will want to use a different
" key for the 'cut' operator (see options section below for this) or remap
" something else to 'add mark'.
nnoremap gm m

let g:EasyClipUseYankDefaults = 0

let g:EasyClipUseSubstituteDefaults = 1
let g:EasyClipAlwaysMoveCursorToEndOfPaste = 1
let g:EasyClipAutoFormat = 1

let g:EasyClipShareYanks = 1

imap <c-V> <plug>EasyClipInsertModePaste
cmap <c-v> <plug>EasyClipCommandModePaste

nmap <leader>cf <plug>EasyClipToggleFormattedPaste


vmap <Leader>y "+y
