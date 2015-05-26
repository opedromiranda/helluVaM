echo "Installing NVM"
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.25.2/install.sh | bash
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM
echo "Installing node stable"
nvm install stable

#echo "Installing Oh-My-Zsh"
#wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh
#sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="kphoen"/g' ~/.zshrc

echo "Setting up golang workspace"
GO_DIR=~/shared/go

if [ ! -d "$GO_DIR" ] ; then
    mkdir $GO_DIR
    mkdir $GO_DIR/bin
    mkdir $GO_DIR/pkg
    mkdir $GO_DIR/src
    echo "export GOPATH=$GO_DIR" >> ~/.bashrc
    echo "export PATH=$PATH:$GOPATH/bin" >> ~/.bashrc
fi
