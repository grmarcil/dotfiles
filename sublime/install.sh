#! /bin/bash
SOURCE=~/dotfiles/sublime
ignore=( install.sh )

if [[ "$OSTYPE" == "linux"* ]]; then
  TARGET="$HOME/.config/sublime-text-3/Packages/User"
elif [[ "$OSTYPE" == "darwin"* ]]; then
  TARGET="$HOME/Library/Application Support/Sublime Text 3/Packages/User"
fi

read -r -p "Are you sure? This will delete and replace your Sublime Text 3 user settings [y/N] " response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
then
  for filename in *
  do
    shouldIgnore=false
    for ignorename in ${ignore[@]}
    do
      if [[ "$filename" == "$ignorename" ]]
      then
        shouldIgnore=true
      fi
    done

    if [ $shouldIgnore == false ]
    then
      echo "Overwriting and symlinking $filename..."
      ln -sf "$SOURCE/$filename" "$TARGET/$filename"
    fi
  done
else
  echo "Operation cancelled. Backup your .../Packages/User directory and re-run if desired"
fi
