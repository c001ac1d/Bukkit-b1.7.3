# Bukkit API & CraftBukkit implementation for MC Beta 1.7.3
This repository contains fixed Bukkit API and CraftBukkit sources collected from Spigot Stash and Bukkit GitHub.

The goal is to provide a working version of CraftBukkit for MC version Beta 1.7.3, as it gained relevancy lately.

# Usage
## Building
As you might have already noticed, this repository does not contain the sources of a CraftBukkit Beta 1.7.3 server. Instead, it contains patches that can be applied to
sources of a vanilla server, thus producing modified sources to work with CraftBukkit.

1. Run the `preparePatches.sh` shell script. Make sure that the `src/main/resources` and `src/main/java/net/minecraft/server` folders are created after that.
2. Obtain clean sources of a Beta 1.7.3 server. You can use my repository: https://github.com/c001ac1d/mc-dev-b1.7.3
3. Move all .java files from `net/minecraft/server` directory in the server sources to the `original` directory.
4. Run the `applyPatches.sh` shell script.
5. Copy the `lang`, `achievement` and `font.txt` files and folders from the vanilla server repository to `src/main/resources`.
6. Build the project as a JAR using gradle.

## Creating patches
If you need to create your own patches (you probably don't), follow these steps:

1. Run the `cleanPatches.sh` shell script to remove the original patches.
2. Run the `preparePatches.sh` shell script. It will create all necessary folder for future steps.
3. Obtain clean sources of a Beta 1.7.3 server. You can use my repository: https://github.com/c001ac1d/mc-dev-b1.7.3
4. Move all .java files from `net/minecraft/server` directory in the server sources to the `original` directory.
5. Obtain modified sources of a Beta 1.7.3 server. Hint: https://hub.spigotmc.org/stash/projects/SPIGOT/repos/craftbukkit/browse/src/main/java/net/minecraft/server?at=54bcd1c1f36691a714234e5ca2f30a20b3ad2816
6. Move all .java files of the modified server into the `modified` directory.
7. Run the `makePatches.sh` shell script.

You can find your patches in the `patches`.
