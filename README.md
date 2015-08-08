# Clone the repository into home directory and initialize
    git clone git@github.com:grmarcil/dotfiles.git
    cd dotfiles/
    clone Vundle from github.com/VundleVim/Vundle.vim

# Setup links with install.sh
    bash install.sh

# Inside of vim, run
    :PluginInstall

# Build Command-T with
    #Install OSX Command Line tools and fix if necessary
    sudo xcode-select -switch /usr/bin
    sudo mv /usr/bin/xcrun /usr/bin/xcrun-orig
    sudo vim /usr/bin/xcrun
        #!/bin/sh
        $@
    sudo chmod 755 /usr/bin/xcrun
    cd vim/bundle/command-t/ruby/command-t/
    rvm use system
    # (rvm installed 1.9.3 also known to work for OSX 10.7/10.8 and Ubuntu 10.04/12.04/12.10)
    ruby extconf.rb
    make

# Load iterm2 preferences from ~/dotfiles/iterm

# Use zsh (optional)
    brew install zsh
    # edit /etc/shells to include output from `which zsh`
    chsh -s [which zsh]

# Install ack per platform
    sudo apt-get install ack-grep    # Debian/Ubuntu
    brew install ack                 # OS X with homebrew

# Configure git identity
    cp ~/dotfiles/bash/git_identity.example ~/dotfiles/bash/git_identity
    vim ~/dotfiles/bash/git_identity

# Setup OSX tmux copy wrapper
    brew install reattach-to-user-namespace

