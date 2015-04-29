FOLDER=home_on_snowmane
LINK=sdal
if [[ $(df | grep $FOLDER | wc -l) -eq 0 ]]; then
  mkdir -p ~/home_on_snowmane
  sshfs $USER@snowmane.vbi.vt.edu:/home/$USER ~/$FOLDER -o 
reconnect,ServerAliveInterval=15,ServerAliveCountMax=3,fo$
  echo "$FOLDER mounted"
else
  echo "$FOLDER mounted"
fi

symlink=~/$LINK
if ! [ -L "$symlink" ]; then
  ln -s ~/$FOLDER/$LINK ~/$LINK
  echo "Link $LINK created"
fi


