# Clone the repository into home directory and initialize
    git clone git@github.com:grmarcil/dotfiles.git
    cd dotfiles/
    follow instruction to setup vundle at github.com/VundleVim/Vundle.vim
    Note: you may need to run install.sh before setting up vundle so vim
directory exists?

# Setup links with install.sh
    bash install.sh

# Inside of vim, run
    :PluginInstall

# Load iterm2 preferences from ~/dotfiles/iterm

# Use zsh (optional)
### On OS X
    brew install zsh
    # edit /etc/shells to include output from `which zsh`
### On linux
    sudo apt-get install zsh
### Then
    chsh -s [which zsh]

# Configure git identity
    cp ~/dotfiles/bash/git_identity.example ~/dotfiles/bash/git_identity
    vim ~/dotfiles/bash/git_identity
