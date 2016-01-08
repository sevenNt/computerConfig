# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ll='ls -alGF'
alias vi='vim'
alias ft='ssh relay'
alias cl='clear'
alias sk_test='sudo -i -usankuai php -d auto_prepend_file=/opt/meituan/test/prepend.php'
alias sk_zwtest='sudo -i -usankuai php -d auto_prepend_file=/home/zhengwei11/test/www/prepend.php'
alias logzw11='/home/zhengwei11/bin/logzw11'
alias sk='sudo -i -usankuai'
