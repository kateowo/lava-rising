# LAVARISING main loop


# world
bossbar set lavarising:main players @a

# options
execute if score cut_clean global matches 1.. run function lavarising:extras/cut_clean
execute if score speed_uhc global matches 1.. run function lavarising:extras/speed_uhc
execute if score speed_uhc global matches 1.. if score patch_grindstone_exploit global matches 1.. run function lavarising:extras/grindstone

# periods range checks
## starter period
execute unless score starter_period global matches 10.. run scoreboard players set starter_period global 10
## grace period
execute unless score grace_period global matches 1200.. run scoreboard players set grace_period global 1200

# performance
execute if score period internal matches 2 if score kill_all_falling_blocks global matches 1.. run kill @e[type=falling_block]
# kill nearby falling blocks
execute if score period internal matches 2 if score kill_nearby_falling_blocks global matches 1.. as @e[type=falling_block] run function lavarising:system/performance/nearby_blocks

# riser main
execute if score period internal matches 2 as @e[tag=riser,limit=1] at @s run function lavarising:system/riser/main

# time loop
function lavarising:time

# death checks
execute if score period internal matches 2 if score @s player.death matches 1.. as @a at @s run function lavarising:system/death/go
execute unless score period internal matches 2 run scoreboard players reset @a player.death

# win checks
execute if score period internal matches 2 if score alive internal matches ..1 run tag @a[gamemode=survival,limit=1] add win
execute if score period internal matches 2 if score alive internal matches ..1 run function lavarising:system/win/go