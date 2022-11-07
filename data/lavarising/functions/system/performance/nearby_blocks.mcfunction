# LAVARISING performance
## nearby blocks


# store position of falling blocks
execute store result score @s falling_blocks run data get entity @s Pos[1]

# calculate distance from riser
## move down 2 blocks
scoreboard players operation @s falling_blocks -= kill_nearby_distance global

# nearby? then kill
## if falling blocks (-2y) end up <= the riser's current height
## they will be automatically killed to help performance in
## very demanding cases
execute if score @s falling_blocks <= riser_height internal run kill @s