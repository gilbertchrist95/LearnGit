# Default PS1 = %n@%m %1~ %# 
# export PS1='%1~ %# '


function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

setopt PROMPT_SUBST
export PROMPT='%F{grey}%f %F{cyan}%~%f %F{green}$(parse_git_branch)%f %F{normal}$%f '

export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export ANDROID_EMULATOR=/Users/$USER/Library/Android/sdk/emulator

export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$HOME/flutter/bin:$HOME//Applications/Android\ Studio.app/Contents/jre/Contents/Home/bin