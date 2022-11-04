# LAVARISING riser
## main loop


# remove #illegal blocks
## works in the same 4 quadrants as when rising
## see system/riser/go for more info!
execute if score clear_illegal_blocks global matches 1.. run fill -80 ~ -80 0 ~3 ~ air replace #lavarising:illegal
execute if score clear_illegal_blocks global matches 1.. run fill 80 ~ -80 0 ~3 ~ air replace #lavarising:illegal
execute if score clear_illegal_blocks global matches 1.. run fill -80 ~ 80 0 ~3 ~ air replace #lavarising:illegal
execute if score clear_illegal_blocks global matches 1.. run fill 80 ~ 80 0 ~3 ~ air replace #lavarising:illegal

# store position
## used for calculations involving current height
execute store result score riser_height internal run data get entity @s Pos[1]
## actual lava height is 1 block below armour stand height
scoreboard players operation riser_height internal -= 1 internal

# timer
## not inclusive to ensure riser does not rise
## one last time above height limit
execute if score riser_height internal < rise_height_limit global run function lavarising:system/riser/time