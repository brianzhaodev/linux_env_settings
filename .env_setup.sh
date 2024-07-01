[ ! -f /bin/zsh ] && sudo apt install -y zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

chsh -s $(which zsh)

git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

curl https://raw.githubusercontent.com/brianzhaodev/linux_env_settings/main/.p10k.zsh > .p10k.zsh
curl https://raw.githubusercontent.com/brianzhaodev/linux_env_settings/main/.zshrc.zsh > .zshrc

exec zsh -l