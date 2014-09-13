for file in ~/.{bash_prompt,bash_aliases,exports,extra,git-completion}; do
        [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file
