# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH"

# Make Sublime Text default editor
export EDITOR='subl -w'

# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE

# Ignore duplicate commands in bash history
export HISTCONTROL=ignoredups

# Always enable colored `grep` output
export GREP_OPTIONS="--color=auto"
