# Import paths
source ./paths.sh
source $RC_FILE

editor-open() {
  eval $EDITOR $EDITOR_ARGS "$@"
}

# Create setups dir if not exists
if [ ! -e "$SETUPS_DIR" ]; then
  mkdir $SETUPS_DIR
fi

# Check empty command param
if [ -z "$1" ]; then
  echo "Invalid command"
  exit
fi

# Parameterized paths
COMMAND="$COMMANDS_DIR/$1.sh"
SETUP="$SETUPS_DIR/$2"

# Check if command exists
if [ -e "$COMMAND" ]; then
  source $COMMAND # exec command
else
  echo "Command not found '$1'"
fi
