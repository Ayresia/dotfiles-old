PROMPT="%(?:%{$fg_bold[white]%}➜ :%{$fg_bold[white]%}➜ )"
PROMPT+=' %F{#fb5c8e}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[white]%}git:(%F{#fb5c8e}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[white]%}) %F{#eacac0}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[white]%})"
