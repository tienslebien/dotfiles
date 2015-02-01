if [ "`id -u`" -eq 0 ]; then
    export PROMPT='%{$fg_bold[cyan]%}%T %{$fg_bold[blue]%}%m %{$fg_bold[green]%}%~ %{$fg_bold[yellow]%}\$ %{$reset_color%}'
else
    export PROMPT='%{$fg_bold[cyan]%}%T %{$fg_bold[red]%}%n%{$fg_bold[yellow]%}@%{$fg_bold[magenta]%}%m %{$fg_bold[green]%}%~$(git_prompt_info) %{$fg_bold[yellow]%}\$%{$reset_color%} '

    ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[yellow]%}<%{$fg_bold[blue]%}"
    ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[yellow]%}>%{$reset_color%}"
    ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ✘%{$reset_color%}"
    ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✔%{$reset_color%}"
fi
