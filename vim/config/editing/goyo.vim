" Distraction-free writing in Vim
NeoBundle "junegunn/goyo.vim"
NeoBundle "junegunn/limelight.vim"


" For some color schemes, Limelight may not be able to calculate the color for
" dimming down the surrounding paragraphs. In that case, you need to define
" g:limelight_conceal_ctermfg or g:limelight_conceal_guifg.
let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_guifg = 'DarkGray'

function! s:goyo_enter()
  delcommand ZoomWin
  delcommand <Plug>ZoomWin

  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight

  if has('gui_running')
    set fullscreen
    set linespace=7
  elseif exists('$TMUX')
    silent !tmux set status off
  endif

endfunction

function! s:goyo_leave()
  command! ZoomWin call ZoomWin()
  command! <Plug>ZoomWin call ZoomWin()

  set showmode
  set showcmd
  set scrolloff=5
  Limelight!

  if has('gui_running')
    set nofullscreen
    set linespace=0
  elseif exists('$TMUX')
    silent !tmux set status on
  endif
endfunction

autocmd User GoyoEnter call <SID>goyo_enter()
autocmd User GoyoLeave call <SID>goyo_leave()
