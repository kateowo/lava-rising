# LAVARISING /reload


scoreboard objectives add global dummy
scoreboard objectives add internal dummy

# kill nearby falling blocks
scoreboard objectives add falling_blocks dummy

# bossbar
bossbar add lavarising:main ""
bossbar set lavarising:main color red

# track deaths
scoreboard objectives add player.death dummy

# teams
## red
team add red
team modify red color red
## blue
team add blue
team modify blue color blue
## green
team add green
team modify green color green


# load defaults
execute unless score defaults global matches 1.. run function lavarising:defaults