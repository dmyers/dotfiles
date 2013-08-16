# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH"

# Add brew to PATH
export PATH="/usr/local/bin:$PATH"

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Prefer US English and use UTF-8
export LANG="en_US"
export LC_ALL="en_US.UTF-8"

# Make Sublime Text default editor
export EDITOR='subl -w'

# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE

# Ignore duplicate commands in bash history
export HISTCONTROL=ignoredups

# Always enable colored `grep` output
export GREP_OPTIONS="--color=auto"

# Enable colors in CLI
export CLICOLOR=1

# Set colors for LS
export LSCOLORS="gxfxcxdxbxegedabagacad"
