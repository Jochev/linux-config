clear
echo "       ____________________________________________________"
echo "     /                                                      \ "
echo "     |    _____________________________________________     | "
echo "     |   |                                             |    | "
echo "     |   |  Bonjour $USER !                            |    | "
echo "     |   |                                             |    |
           |   |                                             |    |
           |   |                                             |    |
           |   |                                             |    |
           |   |                                             |    |
           |   |                                             |    |
           |   |                                             |    |
           |   |                                             |    |
           |   |                                             |    |
           |   |                                             |    |
           |   |                                             |    |
           |   |_____________________________________________|    |
           |                                                      |
            \_____________________________________________________/
                   \_______________________________________/ "


# alias

alias lsa='ls -a'
alias lla='ls -l -a'
alias c='clear'
alias grepc='GREP_COLORS="mt=01;31" grep --color=auto'
alias foldergo='createFolderAndOpen'
alias filego='createFileAndEdit'
alias grepp='myGrep'
alias install='sudoPac'

# sudo pacman -S <package>
sudoPac() {
	if [ $# -eq 0 ]; then
		echo "Install... <package>"
		return 1
	fi
    	sudo pacman -Sy --noconfirm --needed "$@"
}

#PS1 personnalise

PS1='\[\e[94;1m\][\W]\[\e[0m\] \[\e[32m\][$?]\[\e[0m\]\n\[\e[95m\]$ >>> \[\e[0m\]'


#nvim un fichier

createFileAndEdit() {
	touch "$1"

	nvim $1
}

#cree, ouvrir un dossier

createFolderAndOpen() {
	mkdir $1
	cd $1
}

#grep insensible
myGrep() {
	GREP_COLOR="mt=01;31" grep -i --color=always "$@"
}

export PATH="$HOME/bin:$PATH"
