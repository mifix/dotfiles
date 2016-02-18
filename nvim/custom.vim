let hostname = substitute(system('hostname'), '\n', '', '')

if filereadable($HOME . "/.config/nvim/hosts/" . hostname . ".vim")
  :silent exec ":source " . $HOME . "/.config/nvim/hosts/" . hostname . ".vim"
else
  :silent exec ":source " . $HOME . "/.config/nvim/hosts/default.vim"
endif
