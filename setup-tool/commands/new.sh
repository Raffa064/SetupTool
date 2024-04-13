echo "[ Create new setup ]"

if [ ! -e "$SETUP" ]; then
  mkdir $SETUP
  cd $SETUP

  MAIN_SH="main.sh"
  CONFIGS_SH="configs.sh"
  ALIAS_SH="alias.sh"

  touch $MAIN_SH
  echo "# Describe your automated setup workflow here" >> $MAIN_SH

  touch $CONFIGS_SH
  echo "# Put your runtime options here" >> $CONFIGS_SH
  echo '# EDITOR="nvim"' >> $CONFIGS_SH

  touch $ALIAS_SH
  echo "# You can define project aliases here" >> $ALIAS_SH
  echo "alias $2=\"setup run $2\"" >> $ALIAS_SH
  echo "alias .$2=\"setup edit $2\"" >> $ALIAS_SH

  editor-open $MAIN_SH $CONFIGS_SH $ALIAS_SH
  
  echo "Finished"
  echo 
  echo "'setup edit $2' to edit this setup."
  echo "'setup run $2' to run this setup."
else
  echo "Setup already exists"
fi
