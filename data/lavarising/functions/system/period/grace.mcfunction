# LAVARISING period
## starter -> grace


scoreboard players set period internal 1
scoreboard players set time internal 0
scoreboard players set time_s internal 0

# announce
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"text":"PvP has been enabled!","color":"yellow"}]
# sfx
execute as @a at @s run playsound block.note_block.pling player @s ~ ~ ~ 100 0.8
execute as @a at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 100 0.2

# world
## grace period is below 499
execute if score grace_period global matches ..499 run worldborder set 160 400
## grace period is between 500 and 899
execute if score grace_period global matches 500..599 run worldborder set 160 500
## grace period is between 600 and 899
execute if score grace_period global matches 600..699 run worldborder set 160 600
## grace period is between 700 and 899
execute if score grace_period global matches 700..799 run worldborder set 160 700
## grace period is between 800 and 899
execute if score grace_period global matches 800..899 run worldborder set 160 800
## grace period is between 900 and 999
execute if score grace_period global matches 900..999 run worldborder set 160 900
## grace period is between 1000 and 1099
execute if score grace_period global matches 1000..1099 run worldborder set 160 1000
## grace period is between 1100 and 1199
execute if score grace_period global matches 1100..1199 run worldborder set 160 1100
## grace period is between 1200 and 1299
execute if score grace_period global matches 1200..1299 run worldborder set 160 1200
## grace period is between 1300 and 1399
execute if score grace_period global matches 1300..1399 run worldborder set 160 1300
## grace period is between 1400 and 1499
execute if score grace_period global matches 1400..1499 run worldborder set 160 1400
## grace period is between 1500 and 1599
execute if score grace_period global matches 1500..1599 run worldborder set 160 1500
## grace period is between 1600 and 1699
execute if score grace_period global matches 1600..1699 run worldborder set 160 1600
## grace period is between 1700 and 1799
execute if score grace_period global matches 1700..1799 run worldborder set 160 1700
## grace period is between 1800 and 1899 (default 1800)
execute if score grace_period global matches 1800..1899 run worldborder set 160 1800
## grace period is between 1900 and 1999
execute if score grace_period global matches 1900..1999 run worldborder set 160 1900
## grace period is above 2000
execute if score grace_period global matches 2000.. run worldborder set 160 2000