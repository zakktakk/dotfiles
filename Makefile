# Makefile for dotfile
.PHONY: all brew cui gui

all: clean cui gui
clean: vim_clean poetry_clean vscode_clean zsh_clean git_clean

cui: vim poetry zsh git
gui: vscode


brew:
	$(PWD)/brew/bin/setup.sh
	brew bundle --verbose --no-lock --file=$(PWD)/brew/config.d/Brewfile

git: git_clean
	$(PWD)/git/bin/setup.sh

vim: vim_clean
	$(PWD)/vim/bin/setup.sh

vscode: vscode_clean
	$(PWD)/vscode/bin/setup.sh

poetry: poetry_clean
	$(PWD)/poetry/bin/setup.sh

zsh: zsh_clean
	$(PWD)/zsh/bin/setup.sh

git_clean:
	rm -rf $(HOME)/.config/git

vim_clean:
	rm -rf $(HOME)/.vimrc
	rm -rf $(HOME)/.vim

poetry_clean:
	rm -rf $(HOME)/.config/pypoetry
	rm -rf "$(HOME)/Library/Application Support/pypoetry"

vscode_clean:
	rm -rf $(HOME)/Library/Application\ Support/Code/User/keybindings.json
	rm -rf $(HOME)/Library/Application\ Support/Code/User/settings.json
	rm -rf $(HOME)/Library/Application\ Support/Code/User/snippets

zsh_clean:
	rm -rf $(HOME)/.zshrc
	rm -rf "$(HOME)/.config/zplug"
