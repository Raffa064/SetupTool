if [ "$2" == "--all-data" ] && [ ! -z $(ls $SETUPS_DIR) ]; then
  echo -e "if you use \e[0;34m--all-data\e[0;37m you will lost all your setups:"
  for setup in $(ls $SETUPS_DIR); do
    echo  "- $setup"
  done
  
  randCode="$RANDOM"
  echo -e "If you really want to, enter the following code: \e[0;31m$randCode\e[0;37m"
  read answer

  if [ "$answer" == "$randCode" ]; then
    echo "Wiping all data (irreversible)..."
    rm $RC_FILE
    rm -rf $SETUPS_DIR
  else
    echo "Data will be kept."
  fi
fi

echo "Uninstalling..."
rm $EXECUTABLE_SCRIPT
rm -rf $BIN_DIR

cat $BASHRC | grep -v "$BASHRC_SOURCE_ALIAS" > "$BASHRC.mod"
mv "$BASHRC.mod" $BASHRC

echo "Good bye :("
