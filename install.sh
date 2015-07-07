#! /bin/bash
DIR=~/dotfiles
ignore=(install.sh)

cd $DIR
for filename in *
do
  shouldIgnore=false
  for ignorename in ${ignore[@]}
  do
    if [[ $filename == $ignorename ]]
    then
      shouldIgnore=true
    fi
  done

  if [ $shouldIgnore == false -a ! -L ~/.$filename ]
  then
    ln -sf $DIR/$filename ~/.$filename
  fi
done
