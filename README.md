# Clone the repository into home directory and initialize
    git clone git@github.com:grmarcil/dotfiles.git
    cd dotfiles/
    Setup vundle (vim): github.com/VundleVim/Vundle.vim
    Note: you may need to run install.sh before setting up vundle so vim directory exists?
    Setup vim-plug (nvim): https://github.com/junegunn/vim-plug
    TODO convert plain vim to use vim-plug

# Setup links with install.sh
    bash install.sh

# Inside of vim, run
    :PluginInstall
# Inside of nvim, run
    :PlugInstall

# Load iterm2 preferences from ~/dotfiles/iterm

# Use zsh (optional)
### On OS X
    brew install zsh
    # edit /etc/shells to include output from `which zsh`
### On linux
    sudo apt-get install zsh
### Then
    chsh -s [which zsh]

# Install fzf
    https://github.com/junegunn/fzf

# Configure git identity
    cp ~/dotfiles/bash/git_identity.example ~/dotfiles/bash/git_identity
    vim ~/dotfiles/bash/git_identity

# Install and configure VSCode
### Plugins
    C/C++, Python, Vim, Project Manager, GitLens
    settings.json should have been installed by install.sh earlier

# Install tmux
    https://github.com/tmux/tmux
    Config depends on tmux >=2.9
### Edit tmux.conf to uncomment the correct copy command for your OS

# Install ripgrep
    https://github.com/BurntSushi/ripgrep
