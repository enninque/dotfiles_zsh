source $ISANAI_HOME/task.zsh

source $ISANAI_HOME/settings.zsh
source $ISANAI_HOME/functions.zsh
source $ISANAI_HOME/zplug.zsh
source $ISANAI_HOME/key.zsh
source $ISANAI_HOME/aliases.zsh
source $ISANAI_HOME/post.zsh

for plugin_config in $ISANAI_HOME/plugin/*.zsh; do
    source $plugin_config
done

isanai_task_execute_all
