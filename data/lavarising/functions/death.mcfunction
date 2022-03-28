gamemode spectator @a[scores={death=1..}]
execute as @a[scores={death=1..}] run scoreboard players remove alive alive_players 1
tellraw @a [{"selector":"@a[scores={death=1..}]","color":"red","bold":true},{"text":" has been eliminated!","color":"dark_red","bold":false}]
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder player @s
scoreboard players reset @a[scores={death=1..}] death