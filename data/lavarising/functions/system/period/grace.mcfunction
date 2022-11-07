# LAVARISING period
## starter -> grace


scoreboard players set period internal 1
scoreboard players set time internal 0
scoreboard players set time_s internal 0

# announce
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"text":"PvP has been enabled!","color":"yellow"}]
# sfx
execute as @a at @s run playsound block.note_block.pling player @s ~ ~ ~ 100 0.8
execute as @a at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 100 0.2

# world
execute if score legacy global matches 1.. run function lavarising:system/border/legacy/grace
execute unless score legacy global matches 1.. run function lavarising:system/border/grace