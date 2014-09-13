# .zshrc is sourced in interactive shells.  It should contain commands to set up
# aliases, functions, options, key bindings, etc.

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gmj"

# Example aliases
# alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias copysshkey='pbcopy < ~/.ssh/id_rsa.pub'
alias copyprivatesshkey='pbcopy < ~/.ssh/id_rsa'
alias update='brew update && brew upgrade && npm update -g && cd ~/.composer && composer self-update && composer update && cd -'

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# If not a command, ZSH will see if this is a directory and cd into it.
AUTO_CD=“true”

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(brew colorize git git-flow-avh github jsontools npm scd sublime vagrant zsh-syntax-highlighting)

# ZSH syntax highlighting
# plugins=(zsh-syntax-highlighting)
# source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red')

source $ZSH/oh-my-zsh.sh

# Set default user.
# Will remove from prompt if matches current user
DEFAULT_USER=gary

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
