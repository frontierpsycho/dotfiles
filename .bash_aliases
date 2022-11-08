alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

alias rm='rm -iv'
alias cp='cp -iv'
alias mv='mv -iv'

alias grep='grep --color -I'
alias egrep='egrep --color -I'

alias aptinstall='sudo aptitude install'
alias aptpurge='sudo aptitude purge'
alias aptremove='sudo aptitude remove'
alias aptupgrade='sudo aptitude safe-upgrade'

alias aptsearch='aptitude search'
alias aptshow='aptitude show'
#alias tmux='tmux -2'

alias sync-progress='sync & watch grep -e Dirty: -e Writeback: /proc/meminfo'

alias vacuum-journal='sudo journalctl --vacuum-size=200M'

alias dfh='df -x tmpfs -h'

alias gdft='git difftool -y --dir-diff'
