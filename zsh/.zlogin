#
# startup file read in interactive login shells
#
# The following code helps us by optimizing the existing framework.
# This includes zcompile, zcompdump, etc.
#

# (
#   local file
#   local zmodule
#   setopt LOCAL_OPTIONS EXTENDED_GLOB
#   autoload -U zrecompile

#   # zcompile the completion cache; siginificant speedup
#   zrecompile -pq ${ZDOTDIR:-${HOME}}/${zcompdump_file:-.zcompdump}

#   # zcompile .zshrc
#   zrecompile -pq ${ZDOTDIR:-${HOME}}/.zshrc

#   # # zcompile enabled module autoloaded functions
#   # zrecompile -pq ${ZIM_HOME}/functions ${ZIM_HOME}/modules/${^zmodules}/functions/^([_.]*|prompt_*_setup|README*|*.zwc|*.zwc.old)(-.N)

#   # # zcompile enabled module init scripts
#   # for zmodule (${zmodules}); do
#   #   zrecompile -pq ${ZIM_HOME}/modules/${zmodule}/init.zsh
#   # done


# ) &!
