export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git)
source $ZSH/oh-my-zsh.sh

alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'


# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

export PATH="/usr/bin:$PATH"
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
export  PATH="$PATH:/usr/local/bin/"
export PATH="$PATH:/home/yeshey/script"

alias zen-browser='flatpak run app.zen_browser.zen'

# alias
alias cls='clear'
alias vim='nvim'

# java config
#export PATH="$PATH:/usr/bin/java"
export ANDROID_HOME=/home/yeshey/Android/Sdk
export PATH=$PATH
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH="$HOME/Desktop/development/flutter/bin:$PATH"

# >>> conda initialize >>>:
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/yeshey/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/yeshey/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/yeshey/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/yeshey/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export CONDA_AUTO_ACTIVATE_BASE=false

# tmuz setup
export PATH="$PATH":"$HOME/.local/scripts/"
bindkey -s ^f "tmux-sessionizer\n"
bindkey -s ^f "tmux-sessionizer\n"
bindkey -s '\eh' "tmux-sessionizer -s 0\n"
bindkey -s '\et' "tmux-sessionizer -s 1\n"
bindkey -s '\en' "tmux-sessionizer -s 2\n"
bindkey -s '\es' "tmux-sessionizer -s 3\n"
