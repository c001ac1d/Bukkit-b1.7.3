cp -r ./original/* ./src/main/java/net/minecraft/server/

cd ./src/main/java/net/minecraft/server/
for SOURCE in *; do
  cd ../../../../../../

  PATCH_PATH=patches/$SOURCE.diff
  TARGET_PATH=src/main/java/net/minecraft/server/$SOURCE

  if test -f $PATCH_PATH; then
    patch $TARGET_PATH < $PATCH_PATH
  else
    echo "$SOURCE has no patch."
  fi

  cd ./src/main/java/net/minecraft/server/
done

echo "Done."