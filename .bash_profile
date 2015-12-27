# .bash_profile is run on login

# for modularity sake
for file in ~/.{bash_prompt,bash_aliases,exports,extra,git-completion}; do
    # test if has read permission
    # test if is a regular file (not dir nor device file)
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# These binds in your profile take precedence over any defined in either /etc/inputrc or ~/.inputrc.
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

# Node.js Version Manager
source ~/.nvm/nvm.sh

# Postgres version manager
[[ -s "~/.pgvm/pgvm_env" ]] && source ~/.pgvm/pgvm_env

# Go version manager
[[ -s "~/.gvm/scripts/gvm" ]] && source "~/.gvm/scripts/gvm"

eval "$(pyenv init -)"

source $(brew --repository)/Library/Contributions/brew_bash_completion.sh

## Custom functions

# Unitl I can more finely differentiate between these two
# https://news.ycombinator.com/item?id=10144771
function clip { [ -t 0 ] && pbpaste || pbcopy;}

# Paths delimited by line
function path {
    echo -e ${PATH//:/\\n}
}
