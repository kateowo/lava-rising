execute if score enabled global matches 0 run bossbar set lavarising:status name {"text":"The void is not currently rising!","color":"green"}
## 1.18
execute unless score legacy global matches 1.. run bossbar set lavarising:status name [{"score":{"name":"@e[tag=riser,limit=1]","objective":"y"},"bold":true,"color":"red"},{"text":"/","color":"dark_red","bold":false},{"text":"310","color":"red","bold":false}]
## 1.17
execute if score legacy global matches 1.. run bossbar set lavarising:status name [{"score":{"name":"@e[tag=riser,limit=1]","objective":"y"},"bold":true,"color":"red"},{"text":"/","color":"dark_red","bold":false},{"text":"245","color":"red","bold":false}]

bossbar set lavarising:status color red