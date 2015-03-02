" Run your tests at the speed of thought
NeoBundle 'janko-m/vim-test'

" asynchronous build and test dispatcher
NeoBundle 'tpope/vim-dispatch'


" Send command from vim to a running tmux session
NeoBundle 'jgdavey/tslime.vim'


let g:test#strategy = 'tslime'

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
