# LAVARISING win
## teams red


scoreboard players set period internal 3

# announce
title @a title {"text":"GAME OVER!","color":"red","bold":true}
title @a subtitle ["",{"text":"Red","color":"red","bold":true},{"text":" has won!","color":"yellow"}]
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Red","color":"red"},{"text":" has won!","color":"yellow"}]
# sfx
execute as @a at @s run playsound ui.toast.challenge_complete player @s ~ ~ ~

# fireworks
effect give @a resistance 9999 255 true
execute as @a[tag=win] at @s run summon firework_rocket ~ ~1 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;16711680],FadeColors:[I;15937120]}]}}}}

# effects
effect give @a[tag=win] glowing 9999 255 true