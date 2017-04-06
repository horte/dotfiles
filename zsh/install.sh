 # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
  	# Check if zsh exists in acceptable shells file
  	if grep -Fxq "/usr/local/bin/zsh" /etc/shells
	then
		# echo 'zsh already an accepted shell'		
		echo ''
	else
		sudo sh -c 'echo /usr/local/bin/zsh >> /etc/shells'		
	fi

	if [ -z "`$SHELL -c 'echo $ZSH_VERSION'`" ]
	then		
		chsh -s $(which zsh)
	fi
  else
  	echo 'No zsh install setup for this OS'
  fi

  git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
