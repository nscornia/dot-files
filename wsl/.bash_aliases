# $HOME/.bash_aliases

# colored highlighting is awesome
if [ "$TERM" != "dumb" ] && [ -x /usr/bin/dircolors ]; then
	eval `dircolors ~/.dircolors`
	alias ls='ls -hF --color=auto'

    alias grep='grep --color=always'
    alias fgrep='fgrep --color=always'
    alias egrep='egrep --color=always'
fi

# ls Aliases
alias la='ls -A'					# show hidden files
alias lla='ls -Al'				# show hidden files
alias ll='ls -l'					# long listing
alias lr='ls -lR'				# recursice ls
alias lx='ls -lXB'				# sort by extension
alias lsd='ls -ltr'				# sort by date
alias ld='ls -l | grep "^d"'		# list only directories
alias lsize='ls -lSr'			# sort by size
alias lmore='ls -al | more'		# pipe through 'more'
#alias tree='tree -Cs'			# nice alternative to 'ls'

# Always have X Forwaring on
alias ssh='ssh -X'

# Command Aliases
alias c='clear'
alias sfname='sudo find / -name $1'
alias fname='find . -name $1'
alias df='df -h -l -x tmpfs -x usbfs'
alias dua='ls -A | xargs du -sch * | sort -h'
alias duas='ls -A | xargs sudo du -sch * | sort -h'
alias psg='ps -ef | grep $1'
alias h='history | grep $1'
alias which='type -all'
alias path='echo -e ${PATH//:/\\n}'
alias hosts='sudo vim /etc/hosts'
alias cleanweb='rm -rf build/* node_modules/* dist/*'
alias trash="rm -fr ~/.Trash"
alias clean="rm *~"


#
# SVN Aliases
#
alias svnempty='svn update --set-depth empty'
alias svnfull='svn update --set-depth infinity'
alias svnnone='svn update --set-depth exclude'
alias svnsparse='svn update --set-depth immediates'
alias svnstig='svn st --no-ignore'

#
# cd aliases
#
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias ........='cd ../../../../../../..'

#
# tree aliases
#
alias tree='tree -hF'
alias tree1='tree -L 1'
alias tree2='tree -L 2'
alias tree3='tree -L 3'

#
# Windows Programs Substitutions
#
#alias atom='$WORKSPACE/AppData/Local/atom/bin/atom'

#
# Replace sudo so it can be used with other aliases
#
alias sudo='sudo '

#
# Timestamps
#
alias stamp='date "+%Y/%m/%d %a %H:%M:%S"'
alias da='date "+%Y-%m-%d %A    %T %Z"'

#
# Show most popular commands
#
alias top-commands='history | awk "{print $2}" | awk "BEGIN {FS="|"} {print $1}" |sort|uniq -c | sort -rn | head -10'

#
# Folder Aliases
#
alias work="cd $WORKSPACE"
alias win="cd /mnt/c"
