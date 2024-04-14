#import paths
source ./setup-tool/paths.sh

# Copy executable file to /bin
rm $EXECUTABLE_SCRIPT > /dev/null 2>&1
cp ./bin.sh $EXECUTABLE_SCRIPT
chmod 777 $EXECUTABLE_SCRIPT

# Create directories
mkdir -p $SETUPS_DIR

# Copy setup-tool to bin dir
rm -rf $BIN_DIR
cp -r ./setup-tool $BIN_DIR

# Create configuration file 
touch $RC_FILE

# Set editor configs
editorSelected=1
for editor in $(ls ./editors); do
  if command -v $editor > /dev/null; then
    echo "$editor is installed, do you want to set him as default editor? (Y/n)"
    read op

    if [ "$op" == "y" ] || [ "$op" == "Y" ]; then
      echo "$(cat ./editors/$editor)" >> $RC_FILE
      editorSelected=0
      break
    fi
  fi
done

# Manually setup editor
if [ $editorSelected -eq 1 ]; then
  echo "What editor do you use?"

  editor=""
  while :; do
    read editor
    if command -v $editor; then
      echo "EDITOR=\"$editor\"" >> $RC_FILE
      break
    else
      echo "Invalid editor name (not found executable)"
    fi
  done

  echo "What arguments do want to pass for this editor?"
  echo -n "$editor "
  read args

  echo "EDITOR_ARGS=\"$args\"" >> $RC_FILE
fi

# Create auto alias script
setup alias

# Add to initializaztion
if ! grep -q "$BASHRC_SOURCE_ALIAS" $BASHRC; then
  echo "$BASHRC_SOURCE_ALIAS" >> $BASHRC
fi

echo "Installed successfully!"
echo "NOTE: You can delete this installation folder now."
