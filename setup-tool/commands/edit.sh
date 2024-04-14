if [ -e "$SETUP" ]; then
  cd $SETUP
  editor-open main.sh configs.sh
else
  echo "Setup not found: '$2'"
fi
