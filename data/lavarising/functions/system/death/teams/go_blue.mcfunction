# LAVARISING death
## teams blue


# swap gamemode
gamemode spectator @s
scoreboard players remove alive internal 1
scoreboard players remove alive_blue internal 1

# announce
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"☠","color":"red"},{"text":"] ","color":"dark_gray"},{"selector":"@s","color":"blue","bold":true},{"text":" has been eliminated!","color":"dark_red"}]
# sfx
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder player @s


scoreboard players reset @s death