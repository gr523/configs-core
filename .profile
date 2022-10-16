export PATH="$PATH:$HOME/bin:$HOME/.local/bin"
export PYTHONPATH="$HOME/Codes/pythonScripts"
export MANPAGER="/bin/sh -c \"unset MANPAGER;col -b -x | \
    vi -R -c 'set ft=man nomod nolist' -c 'map q :q<CR>' \
    -c 'map <SPACE> <C-D>' -c 'map b <C-U>' \
    -c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""



export ZDOTDIR=$HOME/.config/zsh

export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache

export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default

export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
# export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export CLASSPATH="$HOME/Codes/Java/lib/*":$CLASSPATH

export GOPATH="$XDG_DATA_HOME"/go

export VSCODE_PORTABLE="$XDG_DATA_HOME"/vscode
export IPYTHONDIR="$XDG_CONFIG_HOME"/jupyter
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter

export SSB_HOME="$XDG_DATA_HOME/zoom"

export MYSQL_HISTFILE="$XDG_DATA_HOME"/mysql_history

export LESSKEY="$XDG_CONFIG_HOME/less/lesskey"
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"

# fzf
export FZF_CTRL_T_COMMAND="fd --ignore-file ~/.fdignore -t f -i -LHI $dir 2> /dev/null | sed 's@^\./@@'"
export FZF_ALT_C_COMMAND="fd --ignore-file ~/.fdignore -i -t d -HLI  2> /dev/null | sed 's@^\./@@'"

TOUCHPAD=$(xinput list | grep -i touchpad | sed -n 's:.*id=\([0-9]\+\).*:\1:p')

if [ -n "${DISPLAY}" ] && [ -n "${TOUCHPAD}" ]; then
    killall touchegg
    exec touchegg &
fi


export CPP_COMPILE_FLAGS="-D LOCAL -D DBG_MACRO_NO_WARNING -D_GLIBCXX_DEBUG \
--std=c++20 -Wall -Wshadow -Wfloat-equal -Wconversion \
-Wlogical-op -Wshift-overflow=2 -Wduplicated-cond -Wcast-qual -Wcast-align \
-fsanitize=undefined -fno-sanitize-recover -fstack-protector"
