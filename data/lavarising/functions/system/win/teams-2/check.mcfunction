# LAVARISING win
## 2 teams checks


# based on team
## red
execute unless score alive_blue internal matches 1.. if score alive_red internal matches 1.. run tag @a[gamemode=survival,team=red] add win
execute unless score alive_blue internal matches 1.. if score alive_red internal matches 1.. run function lavarising:system/win/teams/go_red
## blue
execute unless score alive_red internal matches 1.. if score alive_blue internal matches 1.. run tag @a[gamemode=survival,team=blue] add win
execute unless score alive_red internal matches 1.. if score alive_blue internal matches 1.. run function lavarising:system/win/teams/go_blue