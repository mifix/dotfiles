" This plugin provides a single command that deletes the current buffer
" and handles the current window in a smart way.
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }

  nnoremap <leader>q :Sayonara<cr>
  nnoremap <leader>Q :Sayonara!<cr>
