# LAVARISING defaults


# general timings
scoreboard players set period internal -1

# extras
## TODO: add cut clean & speed uhc

# world
worldborder set 10
effect clear @a
gamemode adventure @a[team=!spectator]


# rise ticks
## interval between rising
scoreboard players set rise_ticks global 20

# teams
scoreboard players set teams global 0
scoreboard players set teams_count global 2

# sfx
scoreboard players set sfx global 1

# clear illegal blocks
## #lavarising:illegal
## ~3 blocks from the riser
scoreboard players set clear_illegal_blocks global 1


scoreboard players set defaults internal 1