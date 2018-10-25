isanai_alias__tips_settings () {
    # djui/alias-tips
    if zplug check djui/alias-tips; then
        # Alias tooltip message
        export ZSH_PLUGINS_ALIAS_TIPS_TEXT="Use this: "

        # Force alias usage
        export ZSH_PLUGINS_ALIAS_TIPS_FORCE=1

        # Exclude some tips
        export ZSH_PLUGINS_ALIAS_TIPS_EXCLUDES="vi vim nvim"
    fi
}

isanai_add_settings_task isanai_alias__tips_settings
