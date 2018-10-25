isanai_zsh__autosuggestions_settings () {
    if zplug check zsh-users/zsh-autosuggestions; then
        ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(history-substring-search-up history-substring-search-down) # Add history-substring-search-* widgets to list of widgets that clear the autosuggestion
        ZSH_AUTOSUGGEST_CLEAR_WIDGETS=("${(@)ZSH_AUTOSUGGEST_CLEAR_WIDGETS:#(up|down)-line-or-history}") # Remove *-line-or-history widgets from list of widgets that clear the autosuggestion to avoid conflict with history-substring-search-* widgets
        # bindkey '^ ' autosuggest-accept
    fi
}

isanai_zsh__autosuggestions_key () {
    if zplug check zsh-users/zsh-autosuggestions; then
        bindkey '^ ' autosuggest-accept
    fi
}

isanai_add_settings_task isanai_zsh__autosuggestions_settings
isanai_add_key_task      isanai_zsh__autosuggestions_key
