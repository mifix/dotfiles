#!/bin/bash

pip3 install neovim

nvim +PlugInstall +qall

nvim +UpdateRemotePlugins +qall


echo
echo
echo " *********************************************"
echo " *** Neovim setup finished. Happy vimming! ***"
echo " *********************************************"
echo
