# If 3v3v3 is set to 1 (3 teams)

# Red
execute if score red alive_players matches 1.. unless score blue alive_players matches 1.. unless score green alive_players matches 1.. unless score period time matches 3 unless score period time matches -1 run function lavarising:red_victory

# Blue
execute if score blue alive_players matches 1.. unless score red alive_players matches 1.. unless score green alive_players matches 1.. unless score period time matches 3 unless score period time matches -1 run function lavarising:blue_victory

# Green
execute if score green alive_players matches 1.. unless score red alive_players matches 1.. unless score blue alive_players matches 1.. unless score period time matches 3 unless score period time matches -1 run function lavarising:green_victory