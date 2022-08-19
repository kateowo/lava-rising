# LAVARISING riser
## time


scoreboard players add rise_time internal 1

execute if score rise_time internal >= rise_ticks global run function lavarising:system/riser/go
execute if score rise_time internal >= rise_ticks global run scoreboard players reset rise_time internal