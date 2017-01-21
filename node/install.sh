if test ! $(which spoof)
then
  sudo npm install spoof -g
fi

if test ! $(which n)
then
  sudo npm install n -g && sudo n latest
fi

if test ! $(which editorconfig)
then
  sudo npm install editorconfig -g
fi