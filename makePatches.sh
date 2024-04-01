cd ./original
for SOURCE in *; do
  cd ../

  PATCH_PATH=patches/$SOURCE.diff
  ORIG_PATH=original/$SOURCE
  MOD_PATH=modified/$SOURCE

  git diff --no-index --patch --output=$PATCH_PATH $ORIG_PATH $MOD_PATH 2> /dev/null

  if [ -s patches/$SOURCE.diff ]; then
    echo "$ORIG_PATH+$MOD_PATH --> $PATCH_PATH"
  else
    echo "Skipping $SOURCE, zero diff."
    rm ./patches/$SOURCE.diff
  fi

  cd ./original
done

echo "Done. Look for result in the patches folder."