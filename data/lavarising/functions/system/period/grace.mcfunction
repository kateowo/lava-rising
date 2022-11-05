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
execute if score grace_period global matches ..499 run worldborder set 160 460
## grace period is between 500 and 899
execute if score grace_period global matches 500..599 run worldborder set 160 560
## grace period is between 600 and 899
execute if score grace_period global matches 600..699 run worldborder set 160 660
## grace period is between 700 and 899
execute if score grace_period global matches 700..799 run worldborder set 160 760
## grace period is between 800 and 899
execute if score grace_period global matches 800..899 run worldborder set 160 860
## grace period is between 900 and 999
execute if score grace_period global matches 900..999 run worldborder set 160 960
## grace period is between 1000 and 1099
execute if score grace_period global matches 1000..1099 run worldborder set 160 1060
## grace period is between 1100 and 1199
execute if score grace_period global matches 1100..1199 run worldborder set 160 1160
## grace period is between 1200 and 1299
execute if score grace_period global matches 1200..1299 run worldborder set 160 1260
## grace period is between 1300 and 1399
execute if score grace_period global matches 1300..1399 run worldborder set 160 1360
## grace period is between 1400 and 1499
execute if score grace_period global matches 1400..1499 run worldborder set 160 1460
## grace period is between 1500 and 1599
execute if score grace_period global matches 1500..1599 run worldborder set 160 1560
## grace period is between 1600 and 1699
execute if score grace_period global matches 1600..1699 run worldborder set 160 1660
## grace period is between 1700 and 1799
execute if score grace_period global matches 1700..1799 run worldborder set 160 1760
## grace period is between 1800 and 1899 (default 1800)
execute if score grace_period global matches 1800..1899 run worldborder set 160 1860
## grace period is between 1900 and 1999
execute if score grace_period global matches 1900..1999 run worldborder set 160 1960
## grace period is above 2000
execute if score grace_period global matches 2000.. run worldborder set 160 2060