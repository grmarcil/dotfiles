#! /bin/bash
SOURCE=~/dotfiles/sublime/User

if [[ "$OSTYPE" == "linux"* ]]; then
  TARGET=$HOME/.config/sublime-text-3/Packages/User
elif [[ "$OSTYPE" == "darwin"* ]]; then
  TARGET=$HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
fi

read -r -p "Are you sure? This will delete and replace your Sublime Text 3 user settings [y/N] " response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
then
  rm -rf "$TARGET"
  ln -sf $SOURCE "$TARGET"
else
  echo "Operation cancelled. Backup your .../Packages/User directory and re-run if desired"
fi
