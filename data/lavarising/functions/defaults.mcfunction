# LAVARISING defaults


# general timings
scoreboard players set period internal -1

# extras
scoreboard players set cut_clean global 1
scoreboard players set speed_uhc global 1

# patch grindstone exploit
scoreboard players set patch_grindstone_exploit global 1

# world
worldborder set 10
effect clear @a
gamemode adventure @a[team=!spectator]


# periods
## starter period (1m)
scoreboard players set starter_period global 60
## grace period (30m)
scoreboard players set grace_period global 1800

# rise ticks
## interval between rising
scoreboard players set rise_ticks global 20

# teams
scoreboard players set teams global 0
scoreboard players set teams_count global 2

# sfx
scoreboard players set sfx global 1

# performance
## kill nearby falling blocks
scoreboard players set kill_nearby_falling_blocks global 1
scoreboard players set kill_nearby_distance global 2
## drastic, kills ALL falling blocks
scoreboard players set kill_all_falling_blocks global 0

# clear illegal blocks
## #lavarising:illegal
## ~3 blocks from the riser
scoreboard players set clear_illegal_blocks global 1


scoreboard players set defaults internal 1