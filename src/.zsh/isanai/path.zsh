# Isanai paths
PATH="$PATH:$HOME/.cask/bin"
ISANAI_HOME=~/.zsh/isanai
ISANAI_DATA=~/.zsh/.conf
ISANAI_TMP=~/.zsh/.tmp

ISANAI_PLUGIN_CONFIG_DIR=$ISANAI_HOME/plugin

[ ! -d $ISANAI_HOME ] && mkdir -p $ISANAI_HOME
[ ! -d $ISANAI_DATA ] && mkdir -p $ISANAI_DATA
[ ! -d $ISANAI_TMP ]  && mkdir -p $ISANAI_TMP

[ ! -d $ISANAI_PLUGIN_CONFIG_DIR ] && mkdir -p $ISANAI_PLUGIN_CONFIG_DIR
