" Simple tmux statusline generator with support for powerline symbols and
" statusline / airline / lightline integration
NeoBundle "edkolev/tmuxline.vim"

let g:tmuxline_separators = {
    \ 'left' : '⮀',
    \ 'left_alt': '⮁',
    \ 'right' : '⮂',
    \ 'right_alt' : '⮃',
    \ 'space' : ' '}

" let g:tmuxline_preset = {
"       \'a'    : '#S',
"       \'win'  : '#I #W',
"       \'cwin' : '#I #W #F',
"       \'x'    : '',
"       \'y'    : ['%d.%m-%Y', '%H:%M'],
"       \'z'    : '#(whoami)@#H'}

