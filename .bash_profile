for file in ~/.{bash_prompt,bash_aliases}; do
        [ -r "$file" ] && source "$file"
done
unset file