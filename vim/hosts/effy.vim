set background=dark
colorscheme xoria256


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
      \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ], ['ctrlpmark'] ],
      \   'right': [ [ 'syntastic', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'MyFugitive',
      \   'filename': 'MyFilename',
      \   'fileformat': 'MyFileformat',
      \   'filetype': 'MyFiletype',
      \   'fileencoding': 'MyFileencoding',
      \   'mode': 'MyMode',
      \   'ctrlpmark': 'CtrlPMark',
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
