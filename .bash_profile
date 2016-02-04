# .bash_profile is run on login
# .bashrc is sourced upon interactive non-login shells

# .git-completion needs to be sourced before .bash_aliases as
#      alias 'g' depends on function _git to be in shell
for file in ~/.{bash_prompt,git-completion,bash_aliases,exports,extra}; do
    # test if has read permission
    # test if is a regular file (not dir nor device file)
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# command substitution
# http://wiki.bash-hackers.org/syntax/expansion/cmdsubst
source $(brew --repository)/Library/Contributions/brew_bash_completion.sh

# Auto correct misspelled cd's
shopt -s cdspell

# These binds in your profile take precedence over any defined in either /etc/inputrc or ~/.inputrc.
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

# Node.js Version Manager
source ~/.nvm/nvm.sh

# Postgres version manager
[[ -s ~/.pgvm/pgvm_env ]] && source ~/.pgvm/pgvm_env

# Go version manager
[[ -s ~/.gvm/scripts/gvm ]] && source ~/.gvm/scripts/gvm
# gvm use go1.5.3 # this is slowing down bash shell init

eval "$(pyenv init -)"

######################################## Custom functions
########################################
########################################

# Unitl I can more finely differentiate between these two
# https://news.ycombinator.com/item?id=10144771
function clip { [ -t 0 ] && pbpaste || pbcopy;}

# Paths delimited by line
function path {
    echo -e ${PATH//:/\\n}
}

function whereisfunc() {
    shopt -s extdebug
    # Dump the function's name, line number and fully qualified source file
    declare -F $1
    shopt -u extdebug
}

# `v` with no arguments opens the current directory in Vim, otherwise opens the
# given location
function v() {
    if [ $# -eq 0 ]; then
        vim .;
    else
        vim "$@";
    fi;
}

# Create a new directory and enter it
function mkd() {
    mkdir -p "$@" && cd "$_";
}


# Change working directory to the deepest Finder window location
function cdf() { # short for `cdfinder`
    cd "$(osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)')";
}
