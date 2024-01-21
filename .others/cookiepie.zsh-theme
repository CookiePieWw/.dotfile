# Modified from https://github.com/zweix123/linux-config/blob/master/zweix.zsh-theme
# Clean, simple, compatible and meaningful.
# Tested on Linux, Unix and Windows under ANSI colors.
# It is recommended to use with a dark background.
# Colors: black, red, green, yellow, *blue, magenta, cyan, and white.
#

# Git info
local git_info='$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[blue]%}on git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%} x%{$fg[blue]%})"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

local exit_code="%(?,,%{$fg[red]%}[%?]%{$reset_color%})"

# Prompt format:
#
# PRIVILEGES USER @ MACHINE in DIRECTORY on git:BRANCH STATE [TIME] C:LAST_EXIT_CODE
# $ COMMAND
#
# For example:
#
# % ys @ ys-mbp in ~/.oh-my-zsh on git:master x [21:47:42] C:0
# $

# PROMPT="%{$terminfo[bold]$fg[blue]%}#%{$reset_color%} \

PROMPT="\
%(#,%{$bg[yellow]%}%{$fg[black]%}%n%{$reset_color%},%{$fg[cyan]%}%n)\
%{$reset_color%}@\
%{$fg[green]%}%m\
%{$reset_color%}:\
%{$terminfo[bold]$fg[yellow]%}%~%{$reset_color%}\
${git_info}\
$exit_code
%(?,%{$fg_bold[green]%}>,%{$fg_bold[red]%}>)%{$reset_color%} "

# $fg_bold[red]%}> %{$reset_color%}"
# %{$terminfo[bold]
