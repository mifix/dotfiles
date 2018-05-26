" A Vim wrapper for running tests on different granularities.
Plug 'janko-m/vim-test'

nmap <silent> <localleader>tn :TestNearest<CR>
nmap <silent> <localleader>tf :TestFile<CR>
nmap <silent> <localleader>ts :TestSuite<CR>
nmap <silent> <localleader>tl :TestLast<CR>
nmap <silent> <localleader>tg :TestVisit<CR>

