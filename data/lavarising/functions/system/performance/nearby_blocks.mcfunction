# LAVARISING performance
## nearby blocks


# store position of falling blocks
execute store result score @s falling_blocks run data get entity @s Pos[1]

# calculate distance from riser
scoreboard players remove @s falling_blocks 2

# nearby, then kill
execute if score @s falling_blocks <= riser_height internal run kill @s