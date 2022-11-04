# LAVARISING setup
## dynamically generated


# tellraw
## header
tellraw @s ["",{"text":"\nLAVA RISING\n","color":"red","bold":true}]
## intro
tellraw @s ["",{"text":"Before the game begins, check your options and invite everyone to the game. Hover over titles for more information.\n"}]
## options
tellraw @s ["",{"text":"Options:","color":"yellow"}]

# teams
## enabled
execute if score teams global matches 1.. run tellraw @s ["",{"text":"Teams \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Fight to the death together! Requires adding players to red/blue (or green if 3 teams)."}]}},{"text":"[","color":"white"},{"text":"✔","color":"green","bold":true},{"text":"]","color":"white"},{"text":"  ","color":"dark_gray"},{"text":"X","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function lavarising:setup/teams/off"}},{"text":" ","color":"dark_gray"}]
## disabled
execute unless score teams global matches 1.. run tellraw @s ["",{"text":"Teams \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Fight to the death together! Requires adding players to red/blue (or green if 3 teams)."}]}},{"text":" ","color":"dark_gray"},{"text":"✔","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function lavarising:setup/teams/on"}},{"text":" ","color":"dark_gray"},{"text":" [","color":"white"},{"text":"X","color":"red","bold":true},{"text":"]","color":"white"}]

# rise height limit
tellraw @s ["",{"text":"Rise height limit \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"The maximum height limit the lava can reach."}]}},{"text":" ","color":"white"},{"text":"-","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function lavarising:setup/rise_height_limit/down"}},{"text":"  ","color":"white"},{"score":{"name":"rise_height_limit","objective":"global"}},{"text":"  ","color":"dark_gray"},{"text":"+","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function lavarising:setup/rise_height_limit/up"}},{"text":" ","color":"dark_gray"}]

# rise ticks
tellraw @s ["",{"text":"Rise ticks \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"The interval between the lava rising (in ticks)."}]}},{"text":" ","color":"white"},{"text":"-","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function lavarising:setup/rise_ticks/down"}},{"text":"  ","color":"white"},{"score":{"name":"rise_ticks","objective":"global"}},{"text":"  ","color":"dark_gray"},{"text":"+","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function lavarising:setup/rise_ticks/up"}},{"text":" ","color":"dark_gray"}]

# starter period
tellraw @s ["",{"text":"Starter period \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"PvP is disabled, starts when the game begins (min. 10s)."}]}},{"text":" ","color":"white"},{"text":"-","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function lavarising:setup/starter_period/down"}},{"text":"  ","color":"white"},{"score":{"name":"starter_period","objective":"global"}},{"text":"  ","color":"dark_gray"},{"text":"+","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function lavarising:setup/starter_period/up"}},{"text":" ","color":"dark_gray"}]

# grace period
tellraw @s ["",{"text":"Grace period \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"PvP is enabled along with respawning (min 20m)."}]}},{"text":" ","color":"white"},{"text":"-","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function lavarising:setup/grace_period/down"}},{"text":"  ","color":"white"},{"score":{"name":"grace_period","objective":"global"}},{"text":"  ","color":"dark_gray"},{"text":"+","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function lavarising:setup/grace_period/up"}},{"text":" ","color":"dark_gray"}]

# cut clean
## enabled
execute if score cut_clean global matches 1.. run tellraw @s ["",{"text":"Cut Clean \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Automatically smelts ores and cooks food."}]}},{"text":"[","color":"white"},{"text":"✔","color":"green","bold":true},{"text":"]","color":"white"},{"text":"  ","color":"dark_gray"},{"text":"X","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function lavarising:setup/cut_clean/off"}},{"text":" ","color":"dark_gray"}]
## disabled
execute unless score cut_clean global matches 1.. run tellraw @s ["",{"text":"Cut Clean \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Automatically smelts ores and cooks food."}]}},{"text":" ","color":"dark_gray"},{"text":"✔","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function lavarising:setup/cut_clean/on"}},{"text":" ","color":"dark_gray"},{"text":" [","color":"white"},{"text":"X","color":"red","bold":true},{"text":"]","color":"white"}]

# speed uhc
## enabled
execute if score speed_uhc global matches 1.. run tellraw @s ["",{"text":"Speed UHC \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Automatically enchants tools with efficiency."}]}},{"text":"[","color":"white"},{"text":"✔","color":"green","bold":true},{"text":"]","color":"white"},{"text":"  ","color":"dark_gray"},{"text":"X","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function lavarising:setup/speed_uhc/off"}},{"text":" ","color":"dark_gray"}]
## disabled
execute unless score speed_uhc global matches 1.. run tellraw @s ["",{"text":"Speed UHC \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Automatically enchants tools with efficiency."}]}},{"text":" ","color":"dark_gray"},{"text":"✔","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function lavarising:setup/speed_uhc/on"}},{"text":" ","color":"dark_gray"},{"text":" [","color":"white"},{"text":"X","color":"red","bold":true},{"text":"]","color":"white"}]

# legacy mode
## enabled
execute if score legacy global matches 1.. run tellraw @s ["",{"text":"Legacy mode (pre-1.18) \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Reverts the height limit and spawn height down to pre-1.18 values."}]}},{"text":"[","color":"white"},{"text":"✔","color":"green","bold":true},{"text":"]","color":"white"},{"text":"  ","color":"dark_gray"},{"text":"X","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function lavarising:setup/legacy/off"}},{"text":" ","color":"dark_gray"}]
## disabled
execute unless score legacy global matches 1.. run tellraw @s ["",{"text":"Legacy mode (pre-1.18) \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Reverts the height limit and spawn height down to pre-1.18 values."}]}},{"text":" ","color":"dark_gray"},{"text":"✔","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function lavarising:setup/legacy/on"}},{"text":" ","color":"dark_gray"},{"text":" [","color":"white"},{"text":"X","color":"red","bold":true},{"text":"]","color":"white"}]

## footer
tellraw @s ["",{"text":"\nOnce you're ready, run "},{"text":"/function lavarising:start","color":"yellow","underlined":true,"clickEvent":{"action":"run_command","value":"/function lavarising:start"}},{"text":" and let the games begin!\n"}]


scoreboard players set setup internal 1