NeoBundle "tpope/vim-obsession"

" Autoload sessions created by tpope's vim-obsession when starting Vim.
" TODO use with doc root
augroup sourcesession
        autocmd!
        autocmd VimEnter * nested
        \ if !argc() && empty(v:this_session) && filereadable('Session.vim') |
        \   source Session.vim |
        \ endif
augroup END
