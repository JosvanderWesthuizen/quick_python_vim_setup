cp .vimrc ~/.vimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir ~/.vim/colors
mv distinguished.vim ~/.vim/colors/
vim -c 'PluginInstall' -c 'qa!'

apt install flake8
