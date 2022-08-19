# SPEED UHC Grindstone patch
## prevents an infinite enchanting exploit


# fill away grindstones
execute as @a at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace grindstone

# clear grindstones from inv
clear @a grindstone