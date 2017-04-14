# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="tmux.conf zshrc bash_aliases bash_functions sqliterc"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

#ln $dir/fonts ~/.fonts
#fc-cache -f -v

#install git flow completion
git clone https://github.com/bobthecow/git-flow-completion ~/.oh-my-zsh/custom/plugins/git-flow-completion

git clone https://github.com/powerline/fonts.git pwfonts
cd pwfonts && ./install.sh

echo "Setting up zsh"
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

OMF=~/.oh-my-zsh/oh-my-zsh.sh
if [ ! -f $OMF ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Setup default locales
sudo locale-gen "en_IE.UTF-8"

#install default packages
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo add-apt-repository ppa:neovim-ppa/stable -y
sudo apt-get update
sudo apt-get install -y exuberant-ctags build-essential cmake python-dev python3-dev libssl-dev vim-youcompleteme autojump nodejs htop ncdu python-pip python3-pip byobu zsh vim-gtk python-setuptools neovim tree git-extras cowsay fortune
sudo pip install --upgrade pip
sudo pip install --upgrade neovim
sudo pip3 install --upgrade neovim
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim

sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor

sudo pip install livereload speedtest-cli virtualenv virtualenvwrapper
sudo npm install -g goops

chsh -s /bin/zsh

git clone git@github.com:fergalmoran/vimfiles.git ~/.vim
ln -s ~/.vim/.vimrc ~/.vimrc

cd ~/.vim
git submodule init
git submodule update
vim +BundleInstall +qall

git config --global user.email "fergal.moran@gmail.com"
git config --global user.name "Fergal Moran"


