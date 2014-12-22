for file in ~/.{bash_prompt,bash_aliases,exports,extra,git-completion}; do
        [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# These binds in your profile take precedence over any defined in either /etc/inputrc or ~/.inputrc.
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"
