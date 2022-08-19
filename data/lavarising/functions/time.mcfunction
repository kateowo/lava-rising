# LAVARISING time


execute if score period internal matches 0..2 run function fm:clock

# periods
## starter period
execute if score time_s internal >= starter_period global run function lavarising:system/period/grace
## grace period
execute if score time_s internal >= grace_period global run function lavarising:system/period/main

## TODO: calculate time left (`time_left`)
## to display in bossbar

# bossbar
## pre-game (-1)
execute if score period internal matches -1 run bossbar set lavarising:main name "The games will begin shortly!"
execute if score period internal matches -1 run bossbar set lavarising:main color white
## starter period (0)
execute if score period internal matches 0 run bossbar set lavarising:main name ["",{"text":"Starter period \u0020 \u0020","color":"yellow"},{"score":{"name":"time_left","objective":"internal"},"color":"yellow","bold":true},{"text":" seconds left","color":"white"}]
execute if score period internal matches 0 run bossbar set lavarising:main color yellow
## grace period (1)
execute if score period internal matches 1 run bossbar set lavarising:main name ["",{"text":"Grace period \u0020 \u0020","color":"gold"},{"score":{"name":"time_left","objective":"internal"},"color":"gold","bold":true},{"text":" seconds left","color":"white"}]
execute if score period internal matches 1 run bossbar set lavarising:main color yellow
## main period (2)
execute if score period internal matches 2 run bossbar set lavarising:main name ["",{"text":"LAVA RISING \u0020 \u0020","color":"red","bold":true},{"text":"Currently at Y: ","color":"white"},{"score":{"name":"riser_height","objective":"internal"},"color":"red","bold":true}]
execute if score period internal matches 2 run bossbar set lavarising:main color red
## win (3)
execute if score period internal matches 3 run bossbar set lavarising:main name "Game over!"
execute if score period internal matches 3 run bossbar set lavarising:main color white