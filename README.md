vimrc
====

My vimrc files.

### Installation



```shell
git clone --recursive https://github.com/jtwaleson/vimrc.git ~/.vim

mkdir -p ~/.cache/{vim-swap,vim-undo}

ln -sf ~/.vim/vimrc ~/.vimrc

test -d ~/.vim/bundle/Vundle.git || mkdir -p ~/.vim/bundle && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +BundleInstall! +qall

```
