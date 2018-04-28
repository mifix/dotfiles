"  latex live preview - plugin for neovim
Plug 'donRaphaco/neotex', { 'for': 'tex' }


let g:neotex_latexdiff=1


" A modern vim plugin for editing LaTeX files.
Plug 'lervag/vimtex'

autocmd BufRead,BufNewFile *.{tex} setlocal filetype=tex spell spelllang=de fo+=t tw=72
autocmd BufRead,BufNewFile *.{tex} autocmd BufWritePost * Neomake!
