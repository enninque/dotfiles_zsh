isanai_zplug_ini () {
    # zplug environment variables
    ZPLUG_HOME=$ISANAI_DATA/.zplug

    ZPLUG_CACHE_DIR=$ZPLUG_HOME/.cache
    ZPLUG_BIN=$ZPLUG_HOME/bin
    ZPLUG_LOADFILE=$ZPLUG_HOME/packages.zsh

    ZPLUG_THREADS=16
    ZPLUG_PROTOCOL=HTTPS
    ZPLUG_USE_CACHE=true

    # Load zplug
    source $ZPLUG_HOME/init.zsh
}

isanai_zplug_define_plugins () {
    # b4b4r07/enhancd
    zplug 'b4b4r07/enhancd', use:init.sh

    # djui/alias-tips
    zplug 'djui/alias-tips'

    # junegunn/fzf
    zplug "junegunn/fzf-bin", as:command, from:gh-r, rename-to:fzf, use:"*${(L)$(uname -s)}*amd64*"
    zplug "junegunn/fzf", as:command, use:bin/fzf-tmux

    # Valiev/almostontop
    zplug 'Valiev/almostontop'

    # zsh-users/zsh-autosuggestions
    zplug "zsh-users/zsh-autosuggestions"

    # zsh-users/zsh-syntax-highlighting
    zplug "zsh-users/zsh-syntax-highlighting", defer:2
    zplug "zsh-users/zsh-history-substring-search", on:"zsh-users/zsh-syntax-highlighting"

    # Theme
    zplug 'dracula/zsh', as:theme
    # TODOs:
    # mollifier/anyframe
}

isanai_zplug_install_plugins () {
    # Install plugins
    if ! zplug check --verbose; then
        printf "Install? [y/N]: "
        if read -q; then
            echo; zplug install
        fi
    fi
}

isanai_zplug_load_plugins () {
    # Load plugins
    zplug load
}

isanai_add_settings_task isanai_zplug_ini
isanai_add_settings_task isanai_zplug_define_plugins
isanai_add_settings_task isanai_zplug_install_plugins
isanai_add_settings_task isanai_zplug_load_plugins
