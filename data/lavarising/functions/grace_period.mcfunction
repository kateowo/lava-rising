effect clear @a resistance
scoreboard players set period time 1

execute as @a at @s run playsound minecraft:entity.generic.explode player @s ~ ~ ~ 100 0.5
execute as @a at @s run playsound minecraft:ambient.cave player @s ~ ~ ~ 100 0.5
title @a title {"text":"GRACE PERIOD","color":"green","bold":true}
title @a subtitle {"text":"PvP has been enabled, however players may still respawn.","color":"white"}

gamerule naturalRegeneration true