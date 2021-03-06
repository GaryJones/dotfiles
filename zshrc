# .zshrc is sourced in interactive shells.  It should contain commands to set up
# aliases, functions, options, key bindings, etc.

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Example aliases
# alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias cc='codecept.phar'
alias copysshkey='pbcopy < ~/.ssh/id_rsa.pub'
alias copyprivatesshkey='pbcopy < ~/.ssh/id_rsa'
alias update="~/.cronjobs/update.sh"
alias reload="source $ZSH/oh-my-zsh.sh"
alias imagecheck="file **/*.jpeg **/*.jpg(.N) | grep -v JPEG; file **/*.gif(.N) | grep -v GIF; file **/*.png(.N) | grep -v PNG"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# If not a command, ZSH will see if this is a directory and cd into it.
AUTO_CD=“true”

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(brew colorize git git-flow-avh github jsontools npm osx scd sublime vagrant zsh-syntax-highlighting)

# ZSH syntax highlighting
# plugins=(zsh-syntax-highlighting)
# source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red')

source $ZSH/oh-my-zsh.sh

# Set default user.
# Will remove from prompt if matches current user
DEFAULT_USER=gary

# Functions

# Create a new directory and enter it
function mkd() {
    mkdir -p "$@" && cd "$@"
}

# Create a data URL from a file
function dataurl() {
    local mimeType=$(file -b --mime-type "$1")
    local data=""
    if [[ $mimeType == text/* ]]; then
        mimeType="${mimeType};charset=utf-8"
    fi
    echo "data:${mimeType};base64,$(openssl base64 -in "$1" | tr -d '\n')"
}

# Get gzipped file size
function gz() {
    echo "orig size (bytes): "
    cat "$1" | wc -c
    echo "gzipped size (bytes): "
    gzip -c "$1" | wc -c
}

# Change Finder window to show current terminal directory
function finder {
 osascript -e 'set cwd to do shell script "pwd"'\
 -e 'tell application "Finder"'\
 -e "if (${1-1} <= (count Finder windows)) then"\
 -e "set the target of window ${1-1} to (POSIX file cwd) as string"\
 -e 'else' -e "open (POSIX file cwd) as string"\
 -e 'end if' -e 'end tell';\
};
