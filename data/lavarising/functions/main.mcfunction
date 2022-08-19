# LAVARISING main loop


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