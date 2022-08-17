export VISUAL=nvim
export EDITOR="$VISUAL"
setopt PROMPT_SUBST
export PROMPT='$(gitBranchName)%12<..<%~%<<%# '

sourceIt() {
  (ls -l $@ && source $@) &> /dev/null
}

gitBranchName () {
  git rev-parse --abbrev-ref HEAD 2> /dev/null | sed 's/\(.*\)/\(\1\) /'
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#zsh-completions
FPATH=$HOMEBREW_PREFIX/share/zsh-completions:$FPATH
typeset -F compinit &> /dev/null && {
  autoload -Uz compinit
  compinit
}

#gcloud
sourceIt $HOMEBREW_PREFIX/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc
sourceIt $HOMEBREW_PREFIX/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc



