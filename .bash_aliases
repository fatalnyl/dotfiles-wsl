alias vi=nvim
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Alias contra borrados accidentales.
# https://github.com/electro7/dot_arch/blob/5bcc133ae6df2caf7b27d2106e880dbfdce5531b/.bashrc#L180
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Some better definitions
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias more=less``

# Git aliases
alias gcd='cd "$(git rev-parse --show-toplevel)"' # go to root of git repo

# https://old.reddit.com/r/bash/comments/1eoc5t1/what_are_good_common_aliases_that_you_use_in_bash/lhdbuai/
function config() {
  if [ -d "$HOME/.config/$1" ]; then
    cd "$HOME/.config/$1"
  elif [ -f "$HOME/.config/$1" ]; then
    vi "$HOME/.config/$1"
  else
    echo "$1 does not exist in the .config directory."
  fi
}


