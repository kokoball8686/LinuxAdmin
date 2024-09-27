
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
PATH=$PATH:/test
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
 
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

#
# Sfecific Configuration
#
# export PS1='[\u@\h \w]\$ '
export PS1='\[\e[31;1m\][\u@\h\[\e[33;1m\] \w]\$ \[\e[m\]'
alias ls='ls -h --color=auto'
alias pps='ps -ef | head -1; ps -ef | grep $1'

alias vi='/usr/bin/vim'
alias grep='grep -i --color'
alias df='df -h -T'

source ~/.local/share/blesh/ble.sh
#
# rsync Alias
#alias RS='rsync -az --delete -e ssh'    # RS /backup/ main:/backup/server1
alias LS='rsync -a --delete'            # LS /backup/ /test100

#
# rsync Alias
#
alias RS='rsync -az --delete -e ssh'    # RS /backup/ main:/backup/server1
alias LS='rsync -a --delete'            # LS /backup/ /test100



#
# firewall Alias
#


alias fwcmd='firewall-cmd --permanent'
alias fwreload='firewall-cmd --reload'
alias fwlist='firewall-cmd --list-all'


#
# DNS Server Alias
#
alias named.conf='vi /etc/named.conf'
alias named.rfc1912.zones='vi /etc/named.rfc1912.zones' 
alias DNS='cd /var/named'
alias dnslog='tail -f /var/log/messages'


#
# FTP Server Alias
#
alias FTP='cd /etc/vsftpd'
alias vsftpd.conf='vi /etc/vsftpd/vsftpd.conf'
alias ftpusers='vi /etc/vsftpd/ftpusers'
alias user_list='vi /etc/vsftpd/user_list'
alias slog='tail -f /var/log/secure'
alias flog='tail -f /var/log/xferlog'


#
# Mail Server Alias
#
alias MAIL='cd /etc/mail'
alias sendmail.cf='vi /etc/mail/sendmail.cf'
alias maillog='tail -f /var/log/maillog'

#
# Samba Server Alias
#
alias smb.conf='vi /etc/samba/smb.conf'
alias SMB='cd /etc/samba'
alias smblog='tail -f /var/log/samba/log.smbd'
alias nmblog='tail -f /var/log/samba/log.nmbd'


#
# Script Alias
#
alias aaa='chmod 700 /root/scripts/*.sh'
alias bbb='/root/scripts/makescript.sh'
export PATH=$PATH:/root/scripts
alias code='code --no-sandbox --user-data-dir=~/vscode'
alias vscode='code'

