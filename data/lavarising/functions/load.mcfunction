# LAVARISING /reload


scoreboard objectives add global dummy
scoreboard objectives add internal dummy

# track deaths
scoreboard objectives add player.death dummy


# load defaults
execute unless score defaults global matches 1.. run function lavarising:defaults