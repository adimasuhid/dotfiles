# Dotfiles for VIM

### Prerequisites

Git
Vundle

### Setup

Clone this repo into your home directory:

```
git clone git@github.com:adimasuhid/dotfiles.git
```

Symlink `.vimrc` as your home `.vimrc` 

```
ln -s ~/dotfiles/.vimrc ~/.vimrc
```

Install Vundle via their [QuickStart](https://github.com/VundleVim/Vundle.vim)

Install Plugins

```
vim +PluginInstall +qall
```
