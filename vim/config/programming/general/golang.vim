" Vim plugins for Go
NeoBundle "fatih/vim-go"

au FileType go set ts=4 sw=4 sts=4 noet

"! ,gs - Show a list of interfaces which is implemented by the type
au FileType go nmap <Leader>gs <Plug>(go-implements)
"!, gi - Show type info for the word under your cursor
au FileType go nmap <Leader>gi <Plug>(go-info)

"!, gd - Open the relevant Godoc
au FileType go nmap <Leader>gd <Plug>(go-doc-vertical)

"!, gr - Go run
au FileType go nmap <leader>gr <Plug>(go-run)
"!, gb - Go build
au FileType go nmap <leader>gb <Plug>(go-build)
"!, gt - Go test
au FileType go nmap <leader>gt <Plug>(go-test)
"!, gc - Go coverage
au FileType go nmap <leader>gc <Plug>(go-coverage)

"!, ge - Go rename
au FileType go nmap <Leader>ge <Plug>(go-rename)

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_fmt_command = "goimports"


"set runtimepath+=~/.vim/bundle/vim-golang/misc/vim/
"autocmd FileType go compiler go


" Omnicomplete
" To install, run
"   go get -u github.com/nsf/gocode
"NeoBundle "Blackrush/vim-gocode"



