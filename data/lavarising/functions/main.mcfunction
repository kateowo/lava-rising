# LAVARISING main loop


# riser main
execute if score period internal matches 2 as @e[tag=riser,limit=1] at @s run function lavarising:system/riser/main

# time loop
function lavarising:time

# win checks
execute if score period internal matches 2 if score alive internal matches ..1 run tag @a[gamemode=survival,limit=1] add win
execute if score period internal matches 2 if score alive internal matches ..1 run function lavarising:system/win/go