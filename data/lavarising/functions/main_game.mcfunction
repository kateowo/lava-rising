team modify players friendlyFire true
scoreboard players set period time 2

execute as @a at @s run playsound minecraft:entity.generic.explode player @s ~ ~ ~ 100 0.5
execute as @a at @s run playsound minecraft:ambient.cave player @s ~ ~ ~ 100 0.5
title @a title {"text":"LAVA RISING","color":"red","bold":true}
title @a subtitle {"text":"The lava has begun to rise, this is your only life.","color":"white"}

worldborder set 10 10000
gamerule naturalRegeneration true

scoreboard players set rise_time time 0
scoreboard players set enabled global 1