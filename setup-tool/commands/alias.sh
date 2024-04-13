# Create temporary file
TMP="$PREFIX/tmp/setup-alias-$RANDOM.sh"

# Write alias into temp file
echo "setup alias" >> $TMP 
for setup in $(ls $SETUPS_DIR); do 
  ALIAS_SH="$SETUPS_DIR/$setup/alias.sh" # setup alias.sh
  if [ -e "$ALIAS_SH" ]; then
    echo -e "$(cat $ALIAS_SH)" >> $TMP
  fi
done

# Create/Replace autoalias.sh
rm $AUTO_ALIAS_SH > /dev/null 2>&1
mv $TMP $AUTO_ALIAS_SH
