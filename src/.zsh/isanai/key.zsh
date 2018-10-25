isanai_key_setup_movements () {
    bindkey -M $1 '^[1' vi-find-next-char
    bindkey -M $1 '^[@' vi-find-next-char

    #qwfp
    bindkey -M $1 '^[q' vi-find-next-char
    bindkey -M $1 '^[Q' vi-find-prev-char
    bindkey -M $1 '^[w' vi-find-next-char-skip
    bindkey -M $1 '^[W' vi-find-prev-char-skip

    #arst
    bindkey -M $1 '^[a' vi-backward-word
    bindkey -M $1 '^[A' vi-backward-blank-word
    bindkey -M $1 '^[r' vi-forward-word
    bindkey -M $1 '^[R' vi-forward-blank-word
    bindkey -M $1 '^[s' vi-forward-word-end
    bindkey -M $1 '^[S' vi-forward-blank-word-end
    bindkey -M $1 '^[t' vi-beginning-of-buffer-or-history
    bindkey -M $1 '^[T' vi-fetch-history

    #zxcv
    bindkey -M $1 '^[z' vi-rev-repeat-search
    bindkey -M $1 '^[Z' vi-repeat-search

    #neio
    bindkey -M $1 '^[n' vi-backward-char
    bindkey -M $1 '^[e' vi-down-line-or-history
    bindkey -M $1 '^[i' vi-up-line-or-history
    bindkey -M $1 '^[o' vi-forward-char

    bindkey -M $1 '^[N' vi-beginning-of-line
    bindkey -M $1 '^[E' vi-forward-word-end
    # bindkey -M $1 '^[I' vi-repeat-search
    bindkey -M $1 '^[O' vi-end-of-line

    bindkey -M $1 '^M'   accept-line
}

isanai_key_use_vi () {
    # bindkey -D command
    # bindkey -D emacs
    # bindkey -D isearch
    # bindkey -D vicmd
    # bindkey -D viins
    # bindkey -D viopp
    # bindkey -D visual
    # bindkey -D main
    bindkey -v
}

isanai_key_main_keymap () {
    bindkey -M main -r '^[OA'
    bindkey -M main -r '^[OB'
    bindkey -M main -r '^[OC'
    bindkey -M main -r '^[OD'
}

isanai_key_viins_keymap () {
    isanai_key_setup_movements viins

    bindkey -M viins ',^N' vi-cmd-mode
}


isanai_key_vicmd_keymap () {
    isanai_key_setup_movements vicmd

    #digits
    bindkey -M vicmd '1' digit-argument
    bindkey -M vicmd '2' digit-argument
    bindkey -M vicmd '3' digit-argument
    bindkey -M vicmd '4' digit-argument
    bindkey -M vicmd '5' digit-argument
    bindkey -M vicmd '6' digit-argument
    bindkey -M vicmd '7' digit-argument
    bindkey -M vicmd '8' digit-argument
    bindkey -M vicmd '9' digit-argument
    bindkey -M vicmd '0' digit-argument

    #qwfp
    bindkey -M vicmd 'q'  vi-open-line
    bindkey -M vicmd 'Q'  vi-open-line-above
    bindkey -M vicmd 'f'  vi-delete-char
    bindkey -M vicmd 'F'  vi-swap-case
    bindkey -M vicmd 'w'  vi-replace-chars
    bindkey -M vicmd 'W'  vi-replace
    bindkey -M vicmd 'p'  vi-join

    #arst        cmd
    bindkey -M vicmd 'a'  vi-add-next
    bindkey -M vicmd 'A'  vi-add-eol
    bindkey -M vicmd 'r'  vi-insert
    bindkey -M vicmd 'R'  vi-insert-bol
    bindkey -M vicmd 's'  vi-change
    bindkey -M vicmd 'S'  vi-change-eol
    bindkey -M vicmd 't'  vi-substitute
    bindkey -M vicmd 'T'  vi-change-whole-line

    #zxcv        cmd
    bindkey -M vicmd 'z' vi-delete
    bindkey -M vicmd 'Z' vi-kill-eol
    bindkey -M vicmd 'x' vi-yank
    bindkey -M vicmd 'X' vi-yank-whole-line
    bindkey -M vicmd 'v' visual-mode
    bindkey -M vicmd 'V' visual-line-mode
    bindkey -M vicmd 'c' vi-put-after
    bindkey -M vicmd 'C' vi-put-before

    #,.          cmd
    bindkey -M vicmd ',' vi-repeat-change
    bindkey -M vicmd '<' vi-set-buffer
    bindkey -M vicmd '.' vi-undo
    bindkey -M vicmd '>' vi-redo
}

isanai_key_clean () {
    unfunction isanai_key_setup_movements
    unfunction isanai_key_clean
}

isanai_add_key_task isanai_key_use_vi
isanai_add_key_task isanai_key_main_keymap
isanai_add_key_task isanai_key_viins_keymap
isanai_add_key_task isanai_key_vicmd_keymap
