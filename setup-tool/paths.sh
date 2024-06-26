BASHRC="$PREFIX/etc/bash.bashrc"
EXECUTABLE_SCRIPT="$PREFIX/bin/setup"
SETUP_TOOL="$HOME/.local/share/setup-tool"
RC_FILE="$SETUP_TOOL/setuprc"
SETUPS_DIR="$SETUP_TOOL/setups"
BIN_DIR="$SETUP_TOOL/bin"
COMMANDS_DIR="$BIN_DIR/commands"
AUTO_ALIAS_SH="$BIN_DIR/autoalias.sh"

# bash.bashrc
BASHRC_SOURCE_ALIAS="source \"$AUTO_ALIAS_SH\" 2> /dev/null"
