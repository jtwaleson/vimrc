vimrc
====

My vimrc files.

### Installation
```shell
git clone --recursive https://github.com/jtwaleson/vimrc.git ~/.vim

cd ~/.vim/bundle/youcompleteme
git submodule update --init --recursive
sudo apt-get install build-essential cmake python-dev
./install.sh --clang-completer

ln -s ~/.vim/vimrc ~/vimrc
mkdir -p ~/.cache/{vim-swap,vim-undo}
```
