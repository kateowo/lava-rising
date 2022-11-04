# LAVARISING riser
## go (aka. rise)


# teleport up
tp ~ ~1 ~

# fill area
## works in 4 quadrants across
## top-left, top-right, bottom-left, bottom-right
## to achieve 2x the original area covered
fill -80 ~ -80 0 ~ 0 lava
fill 80 ~ -80 0 ~ 0 lava
fill -80 ~ 80 0 ~ 0 lava
fill 80 ~ 80 0 ~ 0 lava

# announce
## pretty redundant, already displayed in the bossbar
#title @a actionbar ["",{"text":"The lava has risen to Y: ","color":"red"},{"score":{"name":"riser_height","objective":"internal"},"color":"dark_red","bold":true}]
# sfx
execute if score sfx global matches 1.. as @a at @s run playsound block.lava.pop block @s