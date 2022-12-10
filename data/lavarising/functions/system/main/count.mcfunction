# LAVARISING player count


## solos
scoreboard players set alive internal 0
execute as @a[gamemode=survival] run scoreboard players add alive internal 1
## teams
scoreboard players set alive_red internal 0
scoreboard players set alive_blue internal 0
scoreboard players set alive_green internal 0
execute as @a[gamemode=survival,team=red] run scoreboard players add alive_red internal 1
execute as @a[gamemode=survival,team=blue] run scoreboard players add alive_blue internal 1
execute as @a[gamemode=survival,team=green] run scoreboard players add alive_green internal 1
## debug!
execute if score debug internal matches 77 run scoreboard players operation alive internal += 1 internal
execute if score debug internal matches 77 run scoreboard players operation alive_blue internal += 1 internal