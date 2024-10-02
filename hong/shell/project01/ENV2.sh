#!/bin/bash
#############################
# 1. $HOME/.bashrc
# 2. $HOME/.vimrc
# 3. ?
#############################

set -e

source /root/shell/functions.sh

echo
echo "[ $HOME/.bashrc ]"
#############################
# 1. $HOME/.bashrc
# 2. $HOME/.vimrc
# 3. ?
#############################
# 1. $HOME/.bashrc
BASHRC=$HOME/bashrc.txt
# BASHRC=$HOME/.bashrc
echo "[ Phase 01 ] $BASHRC 파일 설정"
/bin/cp /etc/skel/.bashrc $BASHRC
cat << EOF >> $BASHRC
#
# specific config
#
export PS1='\[\e[31;1m\][\u@\h\[\e[33;1m\] \w]\$ \[\e[m\]'
alias ls='ls -h --color=auto'
alias pps='ps -ef | head -1; ps -ef | grep $1'
alias vi='/usr/bin/vim'
alias grep='grep -i --color'
alias df='df -h -T'
EOF
echo "[ OK ] $BASHRC 설정 완료"


#############################


echo "[$HOME/.vimrc]"
# 2. $HOME/.vimrc
BASHRC=$HOME/bashrc.txt
VIMRC=$HOME/.vimrc
echo "[ Phase 01 ] $VIMRC 파일 설정"
cat << EOF >> $VIMRC
set ts=4
set nu
set ai
syntax on
EOF
echo "[ OK ] $VIMRC 설정 완료"
