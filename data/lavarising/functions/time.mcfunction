scoreboard players add time time 1
execute if score enabled global matches 1 run scoreboard players add rise_time time 1

execute if score time time matches 20.. run scoreboard players add time_seconds time 1
execute if score time time matches 20.. run scoreboard players set time time 0

execute as @e[tag=riser] at @s if score rise_time time = rising_time time unless score @s y matches 310.. if score height_limit global matches 1 run function lavarising:rise

execute as @e[tag=riser] at @s if score time time = rising_time time unless score @s y matches 310.. if score height_limit global matches 1 run function lavarising:rise

execute if score time_seconds time = starter_period time if score period time matches 0 run function lavarising:grace_period
execute if score time_seconds time = grace_period time if score period time matches 1 run function lavarising:main_game

# Stores current timer & max y level in the bossbar
execute unless score period time matches 2 store result bossbar lavarising:period value run scoreboard players get time_seconds time

# Progress bossbar
execute if score period time matches -1 run bossbar set lavarising:period color white
execute if score period time matches -1 run bossbar set lavarising:period name ""

execute if score period time matches 0 store result bossbar lavarising:period max run scoreboard players get starter_period time
execute if score period time matches 0 run bossbar set lavarising:period color yellow
execute if score period time matches 0 run bossbar set lavarising:period name [{"text":"It is now the ","color":"white","bold":false},{"text":"starter period","color":"yellow","bold":true},{"text":" [","color":"white","bold":false},{"score":{"name":"time_seconds","objective":"time"},"color":"yellow","bold":true},{"text":"/","color":"gold","bold":false},{"score":{"name":"starter_period","objective":"global"},"color":"yellow","bold":false},{"text":"]","color":"white","bold":false}]

execute if score period time matches 1 store result bossbar lavarising:period max run scoreboard players get grace_period time
execute if score period time matches 1 run bossbar set lavarising:period color green
execute if score period time matches 1 run bossbar set lavarising:period name [{"text":"It is now the ","color":"white","bold":false},{"text":"grace period","color":"green","bold":true},{"text":" [","color":"white","bold":false},{"score":{"name":"time_seconds","objective":"time"},"color":"green","bold":true},{"text":"/","color":"dark_green","bold":false},{"score":{"name":"grace_period","objective":"global"},"color":"green","bold":false},{"text":"]","color":"white","bold":false}]

execute if score period time matches 2 run bossbar set lavarising:period color red
execute if score period time matches 2 run bossbar set lavarising:period name [{"text":"The lava is currently at Y: ","color":"red"},{"score":{"name":"@e[tag=riser,limit=1]","objective":"y"},"color":"yellow","bold":true},{"text":"/310","color":"gold"}]
execute if score period time matches 2 store result bossbar lavarising:period value run scoreboard players get rise_time time
execute if score period time matches 2 store result bossbar lavarising:period max run scoreboard players get rising_time time

execute if score period time matches 3 run bossbar set lavarising:period color blue
execute if score period time matches 3 run bossbar set lavarising:period name [{"text":"The game has ended!","color":"aqua","bold":false}]