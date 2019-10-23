default:
	ln -fs $(PWD)/bashrc $(HOME)/.bashrc
	ln -fs $(PWD)/bash_aliases $(HOME)/.bash_aliases
	ln -fs $(PWD)/bash_functions $(HOME)/.bash_functions
	ln -fs $(PWD)/bash_logout $(HOME)/.bash_logout
	ln -fs $(PWD)/bin $(HOME)/.bin
	ln -fs $(PWD)/gitconfig $(HOME)/.gitconfig
	ln -fs $(PWD)/gitignore_global $(HOME)/.gitignore_global
	ln -fs $(PWD)/inputrc $(HOME)/.inputrc
	ln -fs $(PWD)/profile $(HOME)/.profile
	ln -fs $(PWD)/tmux.conf $(HOME)/.tmux.conf
	ln -fs $(PWD)/tmuxinator $(HOME)/.tmuxinator
	ln -fs $(PWD)/vimrc $(HOME)/.vimrc
