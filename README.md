# Clone the repository into home directory and initialize
    git clone git@github.com:josephlogik/dotfiles.git
    cd dotfiles/
    clone Vundle from github.com/gmarik/vundle

# Setup links from home directory as appropriate
    ln -sf ~/dotfiles/bash_profile ~/.bash_profile
    ln -sf ~/dotfiles/bashrc       ~/.bashrc
    ln -sf ~/dotfiles/vimrc        ~/.vimrc
    ln -sf ~/dotfiles/gvimrc       ~/.gvimrc
    ln -sf ~/dotfiles/dotvim/      ~/.vim
    ln -sf ~/dotfiles/tmux.conf    ~/.tmux.conf
    ln -sf ~/dotfiles/ackrc        ~/.ackrc
    ln -sf ~/dotfiles/gitconfig    ~/.gitconfig
    ln -sf ~/dotfiles/bash/inputrc ~/.inputrc
    ln -sf ~/dotfiles/gemrc        ~/.gemrc

# Inside of vim, run
    :BundleInstall

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

# Install ack per platform
    sudo apt-get install ack-grep    # Debian/Ubuntu
    brew install ack                 # OS X with homebrew

# Configure git identity
    cp ~/dotfiles/bash/git_identity.example ~/dotfiles/bash/git_identity
    vim ~/dotfiles/bash/git_identity

# Setup OSX tmux copy wrapper
    brew install reattach-to-user-namespace

