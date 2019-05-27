" for vim 7
set t_Co=256

" for vim 8
if (has("termguicolors"))
  set termguicolors
endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
  set termguicolors
endif


set background=dark
" colorscheme base16-google-light
" colorscheme OceanicNext
" colorscheme srcery
" colorscheme lumiere
colorscheme base16-spacemacs

let g:airline_theme='base16_spacemacs'

" if &term =~ '256color'
" disable Background Color Erase (BCE) so that color schemes
" render properly when inside 256-color tmux and GNU screen.
" see also http://snk.tuxfamily.org/log/vim-256color-bce.html
set t_ut=
" endif


if has("gui_running")
  set guioptions=egmrt

  set guifont=Meslo\ LG\ S\ for\ Powerline\ 12
endif

if has("g:gui_oni")
    colorscheme base16-solarized-light
endif
