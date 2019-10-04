#! /bin/bash
DIR=~/dotfiles
dotfiles=( ackrc bash_profile bashrc gemrc gitconfig gitignore_global gvimrc
            pryrc tmux-osx.conf tmux.conf vim vimrc zshrc)

# Symlink dotfiles to the home directory
cd $DIR
for filename in ${dotfiles[@]}
do
  ln -sfn $DIR/$filename ~/.$filename
done

# Symlink configfiles to the ~/.config directory
configfiles=( nvim )
for filename in ${configfiles[@]}
do
  ln -sfn $DIR/config/$filename ~/.config/$filename
done

# Install VSCode settings.json config
if [[ "$OSTYPE" == "darwin"* ]]; then
  ln -sfn $DIR/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
else
  ln -sfn $DIR/vscode/settings.json ~/.config/Code/User/settings.json
fi
