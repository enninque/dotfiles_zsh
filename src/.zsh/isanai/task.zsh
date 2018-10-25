typeset -ga isanai_settings_tasks
typeset -ga isanai_key_tasks
typeset -ga isanai_alias_tasks
typeset -ga isanai_post_tasks

isanai_add_settings_task () {
    isanai_settings_tasks+="$1"
}

isanai_add_key_task () {
    isanai_key_tasks+="$1"
}

isanai_add_alias_task () {
    isanai_alias_tasks+="$1"
}

isanai_add_post_task () {
    isanai_post_tasks+="$1"
}

isanai_task_execute_all () {
    for task in $isanai_settings_tasks; do
        $task
        unfunction $task
    done

    for task in $isanai_key_tasks; do
        $task
        unfunction $task
    done

    for task in $isanai_alias_tasks; do
        $task
        unfunction $task
    done

    for task in $isanai_post_tasks; do
        $task
        unfunction $task
    done

    unfunction isanai_add_settings_task
    unfunction isanai_add_key_task
    unfunction isanai_add_alias_task
    unfunction isanai_add_post_task
    unfunction isanai_task_execute_all

    unset isanai_settings_tasks
    unset isanai_key_tasks
    unset isanai_alias_tasks
    unset isanai_post_tasks
}
