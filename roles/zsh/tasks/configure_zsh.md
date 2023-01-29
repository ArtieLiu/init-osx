# configure zsh as default shell
see: https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH

# oh-my-zsh
see: https://ohmyz.sh/

# theme 
see: https://github.com/romkatv/powerlevel10k

# plugins
```.zshrc
plugins=(
    git
    fzf
    autojump
    vi-mode
    zsh-autosuggestions
    zsh-syntax-highlighting
)
```
# alias
```zsh
alias tree="tree -C"
alias o="open"
alias c='clear'
alias ll='exa -l'
alias mci='mvn clean install'
alias cat='bat'
alias rmlogfiles='sudo rm /private/var/log/asl/*.asl'
alias vim='nvim'

# ---------- docker ------------
alias dps='docker ps'
alias dpsa='docker ps -a'
```

# proxies
```zsh
export https_proxy=http://127.0.0.1:7890  
export http_proxy=http://127.0.0.1:7890
export all_proxy=socks5://127.0.0.1:7890
```

# zsh-history
put to `~/.zsh_history`