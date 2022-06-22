# Try to find a player and load setup-flow
execute as @a unless score setup_flow internal matches 1 run function lavarising:setup_flow

# Move up player if they spawn underground
execute if score period time matches -1 as @a at @s unless block ~ ~1 ~ #lavarising:safe run tp @s ~ ~5 ~ 

# Runs the necessary functions & stores variables
execute if score timer_enabled global matches 1 run function lavarising:time
execute as @a if score @s death matches 1.. if score period time matches 2 run function lavarising:death
execute unless score period time matches 2 run scoreboard players reset @a[scores={death=1..}] death
execute as @e[tag=riser] at @s store result score @s y run data get entity @s Pos[1]
bossbar set lavarising:period players @a

# Sets scores for all teams
scoreboard players set @a[team=red] red_team 1
scoreboard players reset @a[team=blue] red_team
scoreboard players reset @a[team=green] red_team
scoreboard players set @a[team=blue] blue_team 1
scoreboard players reset @a[team=red] blue_team
scoreboard players reset @a[team=green] blue_team
scoreboard players set @a[team=green] green_team 1
scoreboard players reset @a[team=red] green_team
scoreboard players reset @a[team=blue] green_team
scoreboard objectives setdisplay sidebar.team.red red_team
scoreboard objectives setdisplay sidebar.team.aqua blue_team
scoreboard objectives setdisplay sidebar.team.green green_team

# Teams
execute if score enable_teams global matches 1 run function lavarising:teams_mode
execute if score enable_teams global matches 0 run function lavarising:solos_mode

kill @e[type=falling_block]

execute as @e[tag=riser] at @s run fill ~-40 ~-1 ~-40 ~40 ~ ~40 lava
execute as @e[tag=riser] at @s run fill ~-40 ~ ~-40 ~40 ~2 ~40 air replace #lavarising:illegal

# PERIOD -1 (pre-game)
execute if score period time matches -1 run gamemode adventure @a[gamemode=!adventure,team=!admin]
execute if score period time matches -1 run effect give @a weakness 9999 255 true
execute if score period time matches -1 run effect give @a resistance 9999 255 true
execute if score period time matches -1 run effect give @a regeneration 9999 255 true
execute if score period time matches -1 run scoreboard players set @a lastlogin -1

# PERIOD 0 (starter period)
execute as @a at @s if score period time matches 0 unless score @s lastlogin matches 0 run effect clear @s weakness
execute as @a at @s if score period time matches 0 unless score @s lastlogin matches 0 run effect clear @s regeneration
execute as @a at @s if score period time matches 0 unless score @s lastlogin matches 0 run effect give @s resistance 120 255 true
execute as @a at @s if score period time matches 0 unless score @s lastlogin matches 0 run gamemode survival @s
execute as @a at @s if score period time matches 0 unless score @s lastlogin matches 0 run scoreboard players set @s lastlogin 0

# PERIOD 1 (grace period)
execute as @a at @s if score period time matches 1 unless score @s lastlogin matches 1 run effect clear @s weakness
execute as @a at @s if score period time matches 1 unless score @s lastlogin matches 1 run effect clear @s regeneration
execute as @a at @s if score period time matches 1 unless score @s lastlogin matches 1 run effect clear @s resistance
execute as @a at @s if score period time matches 1 unless score @s lastlogin matches 1 run gamemode survival @s
execute as @a at @s if score period time matches 1 unless score @s lastlogin matches 1 run scoreboard players set @s lastlogin 1

# PERIOD 2 (main period)
execute as @a at @s if score period time matches 2 unless score @s lastlogin matches 2 run effect clear @s weakness
execute as @a at @s if score period time matches 2 unless score @s lastlogin matches 2 run effect clear @s regeneration
execute as @a at @s if score period time matches 2 unless score @s lastlogin matches 2 run effect clear @s resistance
execute as @a at @s if score period time matches 2 unless score @s lastlogin matches 2 run gamemode survival @s
execute as @a at @s if score period time matches 2 unless score @s lastlogin matches 2 run scoreboard players set @s lastlogin 2