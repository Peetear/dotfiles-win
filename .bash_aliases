# inspiration: https://github.com/mathiasbynens/dotfiles

############# BUILT-INs
#############
#############

# Easier nav
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias cd-="cd -"

### ls
# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
    colorflag="--color"
else # OS X `ls`
    colorflag="-G"
fi

alias l="ls -lhF ${colorflag}"
# List all files colorized in long format, including dot files
alias la="ls -lahF ${colorflag}"
alias ll=la
# List only directories
alias lsd="ls -lhF ${colorflag} | grep --color=never '^d'"

# Always use color output for `ls`
alias ls="command ls ${colorflag}"

# keyboard bindings
alias bindp="bind -p | grep -v '^#\|self-insert\|^$'"

#############
#############
############# END of BUILT-INs

# Git
alias g="git"
alias gst="git status"

# Enable tab completion for alias 'g'
if [ "$(type -t _git)" = function ]; then
    # type 'help complete' for man on builtins
    # or 'man bash'
    complete -o default -o nospace -F _git g;
fi;

# Directories
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias work="cd ~/Work"

# bash_profile
alias bp="vim ~/dotfiles/.bash_profile"
alias sbp="source ~/dotfiles/.bash_profile"

# GNU and FreeBSD compat du args
## interestinly, size is different amongst the two
alias du1="du -h -d 1"

# npm
alias nom="rm -rf node_modules && npm cache clear && npm install"
alias npmls="npm ls --depth=0"
alias npmgls="npmls -g"

# Stuff I never really use but cannot delete either because of http://xkcd.com/530/
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 7'"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# mongodb
alias mongostart="sudo service mongodb start"
alias mongostop="sudo service mongodb stop"
alias mongore="sudo service mongodb restart"
