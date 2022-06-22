
# Resets the timer score
scoreboard players set rise_time time 0

# Fills away all blocks on the riser y level and rises up a block unless above height limit
gamerule doTileDrops false
execute as @e[tag=riser] at @s run fill ~-41 ~-1 ~-41 ~41 ~1 ~41 barrier
execute as @e[tag=riser] at @s run fill ~-40 ~-1 ~-40 ~40 ~ ~40 lava
execute as @e[tag=riser] at @s run fill ~-40 ~-1 ~-40 ~40 ~-3 ~40 lava replace #lavarising:illegal
execute as @e[tag=riser] at @s run tp @s ~ ~1 ~
gamerule doTileDrops true

# Sends chat messages & alert sounds
execute if score sound_effects global matches 1 as @a at @s run playsound minecraft:block.lava.pop ambient @s