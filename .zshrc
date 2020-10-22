# Global History Setting
setopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY

# PATH
export PATH=${PATH}:~/Library/Python/3.8/bin/

# Aliases
alias ll='ls -al'

# LS Colors
export CLICOLOR=1
export LSCOLORS=cxdxcxfxbxegedabagacad

# Prompt and GIT
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats '%F{147}(%b)%f'
PROMPT='%F{216}%n%f@%F{7}%m%f %F{39}%1~%f'\$vcs_info_msg_0_' %# '
