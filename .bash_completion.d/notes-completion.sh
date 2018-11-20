#!/bin/bash

_notes_completions()
{
    path="${NOTES}"

    if [[ ${#COMP_WORDS[@]} -gt 2 ]] ; then
        # Exclude the first and last words
        words=${COMP_WORDS[@]:1}
        words=${words[@]:0:${#words[@]}-1}

        for arg in ${words[@]} ; do
            # Trim whitespace
            arg="${arg##*( )}"
            arg="${arg%%*( )}"

            path="${path}/${arg}"
            COMPREPLY=($(compgen -W "$(ls -1 "${path}" | sed -e 's/\.md$//')" -- "${COMP_WORDS[-1]}"))
        done
    else
        COMPREPLY=($(compgen -W "$(ls -1 "${path}" | sed -e 's/\.md$//')" -- "${COMP_WORDS[1]}"))
    fi
}

complete -F _notes_completions notes