# The `generated` directory

## What

This is where structures saved with a structure block are stored. You cannot actually directly modify the existing structures residing in the datapack without manually moving some files around. This makes sense, as a datapack should indeed be readonly.

## Why

This folder doesn't really have to be committed to the repository and will always stay empty. It mainly exists to prevent a missing folder in the vscode workspace, which can cause issues with plugins (most notably it breaks [Data-pack Helper Plus](https://marketplace.visualstudio.com/items?itemName=SPGoding.datapack-language-server)).
