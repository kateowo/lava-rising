# If 3v3v3 is set to 0 (2 teams)

# Red
execute if score blue alive_players matches ..0 unless score period time matches 3 run function lavarising:red_victory

# Blue
execute if score red alive_players matches ..0 unless score period time matches 3 run function lavarising:blue_victory

# Prevent players from joining Green team
execute if entity @a[team=green] run tellraw @a {"text":"The amount of teams is set to 2, the Green team is reserved for 3 teams only.","color":"red"}
team leave @a[team=green]