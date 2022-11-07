# LAVARISING start
## if eligible


# remove tags
tag @a remove win
effect clear @a

# announce
title @a title ["",{"text":"LAVA RISING","color":"red","bold":true}]
title @a subtitle "Gather resources before the lava begins to rise."
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"text":"The game has started!","color":"yellow"}]
# sfx
execute as @a at @s run playsound entity.generic.explode player @s ~ ~ ~
execute as @a at @s run playsound block.note_block.pling player @s ~ ~ ~

# world
gamemode survival @a[gamemode=!spectator]
## grace period is below 499
execute if score grace_period global matches ..499 run worldborder set 444 5
## grace period is between 500 and 599
execute if score grace_period global matches 500..599 run worldborder set 555 5
## grace period is between 600 and 699
execute if score grace_period global matches 600..699 run worldborder set 666 5
## grace period is between 700 and 799
execute if score grace_period global matches 700..799 run worldborder set 777 5
## grace period is between 800 and 899
execute if score grace_period global matches 800..899 run worldborder set 888 5
## grace period is between 900 and 999
execute if score grace_period global matches 900..999 run worldborder set 1000 5
## grace period is between 1000 and 1099
execute if score grace_period global matches 1000..1099 run worldborder set 1111 5
## grace period is between 1100 and 1199
execute if score grace_period global matches 1100..1199 run worldborder set 1222 5
## grace period is between 1200 and 1299
execute if score grace_period global matches 1200..1299 run worldborder set 1333 5
## grace period is between 1300 and 1399
execute if score grace_period global matches 1300..1399 run worldborder set 1444 5
## grace period is between 1400 and 1499
execute if score grace_period global matches 1400..1499 run worldborder set 1555 5
## grace period is between 1500 and 1599
execute if score grace_period global matches 1500..1599 run worldborder set 1666 5
## grace period is between 1600 and 1699
execute if score grace_period global matches 1600..1699 run worldborder set 1777 5
## grace period is between 1700 and 1799
execute if score grace_period global matches 1700..1799 run worldborder set 1888 5
## grace period is between 1800 and 1899 (default 1800)
execute if score grace_period global matches 1800..1899 run worldborder set 2000 5
## grace period is between 1900 and 1999
execute if score grace_period global matches 1900..1999 run worldborder set 2111 5
## grace period is above 2000
execute if score grace_period global matches 2000.. run worldborder set 2222 5

# set period
scoreboard players set period internal 0