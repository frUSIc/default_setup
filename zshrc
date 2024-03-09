# Custom prompt containing time
PROMPT='%{$fg[yellow]%}[%D{%a %d %b} @ %D{%I:%M %p}] '$PROMPT

# Prompt time self update every TMOUT seconds
TMOUT=30
TRAPALRM() {
  if [ "$WIDGET" != "complete-word" ]; then
    zle reset-prompt
  fi
}

# Print currently directory on startup
pwd

# Print current directory file list on startup
ls

# Add GitHub private key to ssh-agent
alias ssh-github="eval \"$(ssh-agent -s)\" && ssh-add ~/.ssh/github_ed25519"
