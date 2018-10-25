isanai_post_activate_nvm () {
    [ -f "$ISANAI_NVM_PATH" ] && source $ISANAI_NVM_PATH
}

isanai_post_activate_venvwrapper () {
    [ -f "$ISANAI_VENVWRAPPER_PATH" ] && source $ISANAI_VENVWRAPPER_PATH
}

isanai_post_activate_neofetch () {
    if [[ $DISPLAY ]]; then
        if hash neofetch 2>/dev/null; then
            neofetch $ISANAI_NEOFETCH_CONFIG_PATH
        fi
    fi
}

isanai_add_post_task isanai_post_activate_nvm
isanai_add_post_task isanai_post_activate_venvwrapper
isanai_add_post_task isanai_post_activate_neofetch
