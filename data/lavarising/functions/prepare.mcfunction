# Runs on reload

# Creates the required scoreboards
scoreboard objectives add time dummy
scoreboard objectives add global dummy
scoreboard objectives add death deathCount
scoreboard objectives add y dummy

# Defines scores in the global scoreboard
execute unless score defaults global matches 1 run function lavarising:defaults

# Changes necessary gamerules & parameters
gamerule doImmediateRespawn true