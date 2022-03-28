scoreboard players set period time 3

title @a title {"text":"GAME OVER!","color":"aqua","bold":true}
title @a subtitle [{"text":"Blue Team has won the game."}]
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~
effect give @a resistance 9999 255 true
execute as @a at @s run summon firework_rocket ~ ~1 ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;2437522],FadeColors:[I;6719955]}]}}}}
gamemode spectator @a

scoreboard players reset red alive_players
scoreboard players reset blue alive_players
scoreboard players reset green alive_players