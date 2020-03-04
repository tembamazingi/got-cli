######################### RELOAD SHELL, BASH PROFILE  #########################
alias r!='exec $SHELL -l'
[[ ! -L  "$HOME/.bash_profile" ]] && alias r.='source ~/.bashrc' || alias r.='source ~/.bash_profile'

######################### ALL PURPOSE #########################
alias ..='cd ..'
alias *='atom -n .'
alias **='code -n .'
alias @='cat /etc/hosts | grep'
alias @.='sudo nano /etc/hosts'
alias a='alias'
alias a?='alias | grep'
alias b='cd -'
alias c='clear'
alias d='du -hc -d 1'
alias h='history'
alias h?='history | grep --color=auto'
alias h!='history -wc'
alias ip?='ipconfig getifaddr en0'
alias ip??='dig +short myip.opendns.com @resolver1.opendns.com'
alias la='ls -lFAhG'
alias ll='ls -lFhG'
alias lln='ls -lthG'
alias llx='ls -lthGS'
alias lt='ls -1 | wc -l'
alias tmz='sudo rm /var/mail/$(whoami)'
alias xf='rsync -rvzu --progress'
alias xf?='rsync -rvzu --progress --dry-run'
alias z='rm -rf'

######################### VAGRANT #########################
# CREATING & INTERACTING WITH VAGRANT VMS.
alias v='vagrant ssh'
alias v?='vagrant status'
alias v?!='vagrant global-status --prune'
alias v:h='vagrant halt'
alias v:i='vagrant init'
alias v:d='vagrant destroy -f'
alias v:r!='vagrant reload --no-provision'
alias v:u='vagrant up --no-provision'
alias v:w='vagrant gatling-rsync-auto'
alias vm.='cd ~/Projects/devops/vm/vagrant/'

# VAGRANT BOXES
alias v:b='vagrant box list'
alias v:b.='vagrant box add'
alias v:b!='vagrant box remove'

# VAGRANT PLUGINS
alias v:x='vagrant plugin list'
alias v:x.='vagrant plugin install'
alias v:x!='vagrant plugin uninstall'

# END OF FILE