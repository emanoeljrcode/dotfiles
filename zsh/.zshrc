source "$HOME/.ejdots/zsh/.exports"
source "$HOME/.ejdots/zsh/.functions"
source "$HOME/.ejdots/zsh/.aliases"

setopt PROMPT_SUBST # Allow use variables in prompt

PROMPT='%B%F{135}%n%f%b@%F{166}%m%f %F{118}%1~%f$(git_prompt_info)'
