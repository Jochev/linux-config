setupFile() {
	mkdir -p $HOME/bin $HOME/cegep $HOME/projets
}

#package necessaire

installPackages() {
	sudo pacman -Syu --needed --noconfirm git vim nvim gcc gdb python python-pip python-venv starship
}

#gitConfig

gitConfiguration() {
	git config --global core.editor "nvim"
	git config --global user.name "Jonathan Chevalier Savary"
	git config --global user.email "jonatan1234@outlook.fr"
}


#download les packs et creer git
echo "creation des dossiers..."
setupFile
echo "installation des packages..."
installPackages
echo "configuration de github..."
gitConfiguration


echo "copie des fichiers dotfiles..."
cp ./dotfiles/.bashrc ~/.bashrc

export PATH="$HOME/bin:$PATH"

clear

echo "chargement..."
source ~/.bashrc || true
