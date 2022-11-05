# LAVARISING period
## grace -> main


scoreboard players set period internal 2
scoreboard players set time internal 0
scoreboard players set time_s internal 0

# legacy mode
execute if score legacy global matches 1.. run tp @e[tag=riser,limit=1] 0 0 0
execute unless score legacy global matches 1.. run tp @e[tag=riser,limit=1] 0 -64 0

# count players
scoreboard players set alive internal 0
execute as @a[gamemode=survival] run scoreboard players add alive internal 1

# announce
title @a title ["",{"text":"LAVA RISING","color":"red","bold":true}]
title @a subtitle "The lava has begun rising!"
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"text":"The lava has begun rising!","color":"yellow"}]
# sfx
execute as @a at @s run playsound block.note_block.pling player @s ~ ~ ~ 100 0.8
execute as @a at @s run playsound entity.lightning_bolt.impact player @s ~ ~ ~

# world
schedule function lavarising:system/border/main 120s