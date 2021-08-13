source "$HOME/.ejdots/zsh/.exports"
source "$HOME/.ejdots/zsh/.functions"
source "$HOME/.ejdots/zsh/.aliases"

autoload -U colors
colors

setopt PROMPT_SUBST

fpath=($HOME/.ejdots/zsh/git $fpath)
autoload -U $HOME/.ejdots/zsh/git/*(:t)
 
# Enable auto-execution of functions.
typeset -ga preexec_functions
typeset -ga precmd_functions
typeset -ga chpwd_functions
 
# Append git functions needed for prompt.
preexec_functions+='preexec_update_git_vars'
precmd_functions+='precmd_update_git_vars'
chpwd_functions+='chpwd_update_git_vars'

PROMPT='%B%F{135}%n%f%b@%F{166}%m%f %F{118}%1~%f$(prompt_git_info) '

# Set up the prompt (with git branch name)
