if [ -e "$SETUP" ]; then
  cd $SETUP
  editor-open configs.sh
else
  echo "Setup not found: $2"
fi
