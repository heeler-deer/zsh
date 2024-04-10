ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

sudo cat /etc/os-release | grep "CentOS" > /dev/null
if [  $? -eq 0  ]; then
    
    echo  "You're using CentOS,uisng yum to install git,zsh"
    sudo yum -y install git zsh
    echo "Install git,zsh successful,now install oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    echo "oh-my-zsh installed,now install powerlevel10k"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    echo "powerlevel10k downloaded,now modify .zshrc"
    
    cp ./zshrc.txt ~/.zshrc
    echo ".zshrc now modified,install plugins"
    
    git clone https://github.com/joelthelion/autojump.git $ZSH_CUSTOM/plugins/autojump
    git clone https://github.com/paulirish/git-open.git $ZSH_CUSTOM/plugins/git-open
    git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions      
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-completions.git  $ZSH_CUSTOM/plugins/zsh-completions
    echo "now plugins completed"
    source ~/.zshrc
    echo "enjoy your ZSH!!!!!!!!!!!!!!"





fi
sudo cat /etc/os-release | grep "Ubuntu" > /dev/null
if [   $? -eq 0  ]; then
    
    echo  "You're using Ubuntu"
    sudo apt -y install git zsh
    echo "Install git,zsh successful,now install oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    echo "oh-my-zsh installed,now install powerlevel10k"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    echo "powerlevel10k downloaded,now modify .zshrc"
     
    cp ./zshrc.txt ~/.zshrc
    echo ".zshrc now modified,install plugins"
    
    git clone https://github.com/joelthelion/autojump.git $ZSH_CUSTOM/plugins/autojump
    git clone https://github.com/paulirish/git-open.git $ZSH_CUSTOM/plugins/git-open
    git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions      
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-completions.git  $ZSH_CUSTOM/plugins/zsh-completions
    echo "now plugins completed"
    source ~/.zshrc
    echo "enjoy your ZSH!!!!!!!!!!!!!!"
fi


chsh -s /bin/zsh
