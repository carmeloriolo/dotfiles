# .dotfiles

**Requirements**
```
git zsh tmux vim fzf curl
```
*For ZSH:*
Install [oh-my-zsh](https://github.com/junegunn/fzf) and remove default ~/.zshrc
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm ~/.zshrc
```

**Change default shell**
```
chsh /usr/bin/zsh
```

**Installation** 
Clone with submodule
```
git clone --recurse-submodules git@github.com:carmeloriolo/.dotfiles.git
```
Or clone without submodules and update then
```sh
git clone git@github.com:carmeloriolo/.dotfiles.git && cd .dotfiles
git submodule init
git submodule update
```
**Setup VIM**
Edit .vim/.vimrc and set [mapLeader](https://github.com/carmeloriolo/.dotfiles/blob/master/.vim/.vimrc#L4) based on keyboard layout.

**Create symbolic links**
```
ln -s ~/.dotfiles/.zsh ~/.zsh
ln -s ~/.dotfiles/.zsh/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.tmux ~/.tmux
ln -s ~/.dotfiles/.tmux/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/.vim ~/.vim
ln -s ~/.dotfiles/.vim/.vimrc ~/.vimrc
```
**Reload**
```
source ~/.zshrc
```




