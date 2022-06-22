# Resets all settings and creates scoreboards

scoreboard players set period time -1
scoreboard players set @a lastlogin -1
scoreboard objectives add lastlogin dummy

# Defines scores in the global scoreboard
scoreboard players set warning_time time 40
scoreboard players set rising_time time 100
scoreboard players set starter_period time 300
scoreboard players set grace_period time 2500
scoreboard players set height_limit global 1
scoreboard players set sound_effects global 1

# 1.17 switch
scoreboard players set legacy global 0

# Teams
scoreboard players set enable_teams global 0
scoreboard players set 3v3v3 global 0

scoreboard players set timer_enabled global 0
scoreboard objectives add alive_players dummy
scoreboard objectives modify alive_players displayname {"text":"Lava Rising","color":"red","bold":true}
bossbar add lavarising:period {"text":""}
bossbar set lavarising:period players @a

# Create Admin + Spectator team
team add admin
team add spectator

worldborder set 10
gamemode adventure @a
effect give @a weakness 9999 255 true
effect give @a resistance 9999 255 true
effect give @a regeneration 9999 255 true

# Teams
scoreboard players reset alive alive_players
scoreboard players reset red alive_players
scoreboard players reset blue alive_players
scoreboard players reset green alive_players
# Create Teams
# Team 1
team add red
team modify red color red
team modify red friendlyFire false
# Team 2
team add blue
team modify blue color aqua
team modify blue friendlyFire false
# Team 3 (only when 3v3v3 is set to 1)
team add green
team modify green color green
team modify green friendlyFire false
# Add scoreboards for teams
scoreboard objectives add red_team dummy
scoreboard objectives add blue_team dummy
scoreboard objectives add green_team dummy
scoreboard objectives modify red_team displayname [{"text":"Lava Rising","color":"gold","bold":true},{"text":" (red)","color":"red","bold":true}]
scoreboard objectives modify blue_team displayname [{"text":"Lava Rising","color":"gold","bold":true},{"text":" (blue)","color":"aqua","bold":true}]
scoreboard objectives modify green_team displayname [{"text":"Lava Rising","color":"gold","bold":true},{"text":" (green)","color":"green","bold":true}]

difficulty peaceful

scoreboard players set defaults global 1