let g:base16_shell_path='~/.dotfiles/base16-shell/'
set background=light
colorscheme base16-google

" if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
" endif



if has("gui_running")
  set guioptions=egmrt

  set background=light
  colorscheme Tomorrow

  set guifont=Source\ Code\ Pro\ for\ Powerline\ Medium\ 13
  " set guifont=Liberation\ Mono\ for\ Powerline\ 12
  " set guifont=Meslo\ LG\ S\ for\ Powerline\ 11
  " set guifont=Ubuntu\ Mono\ 12
endif

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ], ['gutentags'] ],
      \   'right': [ [ 'syntastic', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'MyFugitive',
      \   'filename': 'MyFilename',
      \   'fileformat': 'MyFileformat',
      \   'filetype': 'MyFiletype',
      \   'fileencoding': 'MyFileencoding',
      \   'mode': 'MyMode',
      \   'gutentags': 'gutentags#statusline',
      \ },
      \ 'component_expand': {
      \   'syntastic': 'SyntasticStatuslineFlag',
      \ },
      \ 'component_type': {
      \   'syntastic': 'error',
      \ },
      \ 'separator': { 'left': '', 'right': ''  },
      \ 'subseparator': { 'left': '', 'right': ''  }
      \ }
