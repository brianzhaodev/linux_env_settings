[ ! -f /bin/zsh ] && sudo apt install -y zsh

[ ! -d './.oh-my-zsh' ] && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

git clone https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

curl https://raw.githubusercontent.com/brianzhaodev/linux_env_settings/main/.p10k.zsh > .p10k.zsh
curl https://raw.githubusercontent.com/brianzhaodev/linux_env_settings/main/.zshrc > .zshrc
curl https://raw.githubusercontent.com/brianzhaodev/linux_env_settings/main/.tmux.conf > .tmux.conf
curl https://raw.githubusercontent.com/brianzhaodev/linux_env_settings/main/.vimrc > .vimrc

[ $SHELL != "/usr/bin/zsh" ] && chsh -s $(which zsh)

exec zsh -l