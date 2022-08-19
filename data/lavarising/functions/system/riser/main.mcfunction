# LAVARISING riser
## main loop


# remove #illegal blocks
execute if score clear_illegal_blocks global matches 1.. run fill -80 ~ -80 0 ~3 ~ air replace #lavarising:illegal
execute if score clear_illegal_blocks global matches 1.. run fill 80 ~ -80 0 ~3 ~ air replace #lavarising:illegal
execute if score clear_illegal_blocks global matches 1.. run fill -80 ~ 80 0 ~3 ~ air replace #lavarising:illegal
execute if score clear_illegal_blocks global matches 1.. run fill 80 ~ 80 0 ~3 ~ air replace #lavarising:illegal

# store position
execute store result score riser_height internal run data get entity @s Pos[1]

# timer
function lavarising:system/riser/time