# LAVARISING riser
## go (aka. rise)


# teleport up
tp ~ ~1 ~

# fill area
## works in 4 quadrants across
## top-left, top-right, bottom-left, bottom-right
## to achieve 2x the original area covered
function lavarising:system/riser/quadrants/0-topleft
schedule function lavarising:system/riser/quadrants/1-topright 2t
schedule function lavarising:system/riser/quadrants/2-bottomleft 4t
schedule function lavarising:system/riser/quadrants/3-bottomright 6t

# announce
## pretty redundant, already displayed in the bossbar
#title @a actionbar ["",{"text":"The lava has risen to Y: ","color":"red"},{"score":{"name":"riser_height","objective":"internal"},"color":"dark_red","bold":true}]
# sfx
execute if score sfx global matches 1.. as @a at @s run playsound block.lava.pop block @s