# LAVARISING start
## if eligible


# remove tags
tag @a remove win
effect clear @a

# announce
title @a title ["",{"text":"LAVA RISING","color":"red","bold":true}]
title @a subtitle "Gather resources before the lava begins to rise."
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"text":"The game has started!","color":"yellow"}]
# sfx
execute as @a at @s run playsound entity.generic.explode player @s ~ ~ ~
execute as @a at @s run playsound block.note_block.pling player @s ~ ~ ~

# world
worldborder set 2000 5
gamemode survival @a[gamemode=!spectator]

# set period
scoreboard players set period internal 0