hash -d S="$HOME/Documents/Schule"
alias S='builtin cd $HOME/Documents/Schule/'

alias D='builtin cd $HOME/Downloads/'
hash -d D="$HOME/Downloads"

alias P='builtin cd $HOME/Projects/'
hash -d P="$HOME/Projects"

alias C='builtin cd $HOME/Projects/cnt/'
hash -d C="$HOME/Projects/cnt"

alias DF='builtin cd $HOME/.dotfiles/'
hash -d DF="$HOME/.dotfiles"


#
# Directory navigation options
#


# This appends '../' to your input for each '.' you type after an initial '..'
zdouble_dot_expand='true'

#
# Navigation
#

# If a command is issued that can’t be executed as a normal command,
# and the command is the name of a directory, perform the cd command to that directory.
setopt AUTO_CD

# If the argument to a cd command (or an implied cd with the AUTO_CD option
# set) is not a directory, and does not begin with a slash, try to expand the
# expression as if it were preceded by a ‘~’ .
setopt CDABLE_VARS

# Make cd push the old directory onto the directory stack.
setopt AUTO_PUSHD

# Don’t push multiple copies of the same directory onto the directory stack.
setopt PUSHD_IGNORE_DUPS

# Do not print the directory stack after pushd or popd.
setopt PUSHD_SILENT

# Have pushd with no arguments act like ‘pushd ${HOME}’.
setopt PUSHD_TO_HOME

#
# Globbing and fds
#

# Treat the ‘#’, ‘~’ and ‘^’ characters as part of patterns for filename generation, etc.
# (An initial unquoted ‘~’ always produces named directory expansion.)
setopt EXTENDED_GLOB

# Perform implicit tees or cats when multiple redirections are attempted.
setopt MULTIOS

# Disallow ‘>’ redirection to overwrite existing files.
# ‘>|’ or ‘>!’ must be used to overwrite a file.
setopt NO_CLOBBER

