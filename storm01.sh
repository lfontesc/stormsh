#! /bin/sh

echo $'\n ## running script post install storm01 \n'

echo $'\n ## update system ## \n'
sudo pacman -Syyuu

echo $'\n ## install packages pacman ## \n'
sudo pacman -S docker discord wget keepassxc zip

#echo '## install packages paru ##'
#paru -S google-chrome ttf-meslo-nerd-font-powerlevel10k

echo $'\n ## Installing Meslo fonts from AUR ## \n'
cd /tmp
git clone https://aur.archlinux.org/ttf-meslo-nerd-font-powerlevel10k.git
cd ttf-meslo-nerd-font-powerlevel10k
makepkg -si --skippgpcheck
S
cd ..
echo $'\n ## Visual Studio Code AUR ## \n'
git clone https://aur.archlinux.org/visual-studio-code-bin.git
cd visual-studio-code-bin
makepkg -si --skippgpcheck
S
cd /home/$USER

#echo $'\n ## Setting Default shell ZSH ## \n'
#chsh -s /bin/zsh

echo $'\n install NVM \n'
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | zsh
source .zshrc
nvm ls-remote
nvm install v10.22.1
nvm install v16.14.2
npm install -g yarn
nvm use v10.22.1
npm install -g yarn

echo $'\n configuring development environment \n'
cd /home/$USER
mkdir dsv
mkdir dsv/react
mkdir go
mkdir go/src
mkdir go/pkg
mkdir go/bin
mkdir go/src/bitbucket.org
mkdir go/src/bitbucket.org/brisanet
sudo mkdir /var/log/auth/
sudo chown $USER:$USER /var/log/auth
touch /var/log/auth/access.log

cd Downloads
unzip filestorm01.zip
cd filestorm01
cp -r vpn ~/
cp gitconfig ~/.gitconfig
cat env-zsh.txt >> ~/.zshrc
cp cookies.json ~/cookies.json
cd ..
m -rf filestorm01
rm filestorm01.zip

echo $'\n ## Installing Google Chrome from AUR ## \n'
cd /tmp
git clone https://aur.archlinux.org/google-chrome.git
cd google-chrome
makepkg -si --skippgpcheck
S


echo $'\n ## Success Script Install ## \n'


