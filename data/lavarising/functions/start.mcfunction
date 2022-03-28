kill @e[tag=riser]
execute unless entity @e[tag=riser] run summon armor_stand 0 -64 0 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["riser"]}

scoreboard players set time time 0
scoreboard players set time_seconds time 0
scoreboard players set timer_enabled global 1
execute as @a[gamemode=!spectator] run scoreboard players add alive alive_players 1

execute as @a at @s run playsound minecraft:entity.generic.explode player @s ~ ~ ~ 100 1.5
title @a title {"text":"Let the games begin!","color":"green","bold":true}
title @a subtitle {"text":"PvP will be enabled in 4 minutes, make sure you're ready!","color":"white"}

function lavarising:starter_period

worldborder set 1000 10
gamemode survival @a
effect clear @a weakness
effect clear @a regeneration

difficulty easy

scoreboard players set enabled global 0