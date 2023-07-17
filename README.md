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

Symlink `.zshrc` as your global `.zshrc`

```
ln -s ~/dotfiles/.zshrc ~/.zshrc
```

Symlink `.gitignore` as your global `.gitignore`

```
ln -s ~/dotfiles/.gitignore ~/.gitignore
```

Set `.gitignore` as global

```
git config --global core.excludesfile ~/.gitignore
```

Install Vundle via their [QuickStart](https://github.com/VundleVim/Vundle.vim)

Install Plugins

```
vim +PluginInstall +qall
```
