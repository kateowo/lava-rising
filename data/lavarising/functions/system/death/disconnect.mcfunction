# LAVARISING death
## refer to 'eliminate_on_disconnect' in defaults


# swap gamemode
gamemode spectator @s

# announce
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"☠","color":"red"},{"text":"] ","color":"dark_gray"},{"selector":"@s","color":"red","bold":true},{"text":" has been eliminated! (left during game)","color":"dark_red"}]
# sfx
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder player @s


scoreboard players reset @s death