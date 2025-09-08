setupFile() {
	mkdir -p $HOME/bin $HOME/cegep $HOME/projects
}

#package necessaire

installPackages() {
	sudo pacman -Syu --needed --noconfirm git vim nivm gcc gdb python3 python3-pip python3-venv
}

#gitConfig

gitConfiguration() {
	git config --global core.editor "nvim"
	git config --global user.name "Jonathan Chevalier Savary"
	git config --global user.email "jonatan1234@outlook.fr"
}

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
	grep -ri "$@" .
}

#download les packs et creer git
installPackages
gitConfiguration

#PS1 personnalise

PS1='\[\e[94;1m\][\W]\[\e[0m\] \[\e[32m\][$?]\[\e[0m\]\n\[\e[95m\]$ >>> \[\e[0m\]'

# alias

alias lsa='ls -a'
alias lla='ls -l -a'
alias c='clear'
alias grepc='GREP_COLORS="ms=01;31" grep --color=auto'
alias foldergo='createFolderAndOpen'
alias filego='createFileAndEdit'
alias grepp='myGrep'


echo -e "    ____________________________________________________
           /                                                      \
           |    _____________________________________________     |
           |   |                                             |    |
           |   |  Bonjour Jonathan !                         |    |
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
           |   |                                             |    |
           |   |_____________________________________________|    |
           |                                                      |
            \_____________________________________________________/
                   \_______________________________________/"
