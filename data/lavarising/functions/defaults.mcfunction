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

# height limit
## riser will stop at this y level
## unlike in previous releases, this is no longer
## something you can disable
scoreboard players set rise_height_limit global 316

# rise ticks
## interval between rising
## lower than before due to starting at -64
scoreboard players set rise_ticks global 80

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
## stored in #lavarising:illegal
## ~3 blocks from the riser
scoreboard players set clear_illegal_blocks global 1

# legacy mode
## resets some values to support pre-1.18
scoreboard players set legacy global 0


scoreboard players set defaults internal 1