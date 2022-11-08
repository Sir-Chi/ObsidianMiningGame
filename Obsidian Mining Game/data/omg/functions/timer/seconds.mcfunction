scoreboard players add seconds timer 1
execute if score seconds timer matches 60 run scoreboard players add minutes timer 1
execute if score tradercanspawn timer matches 1 if score seconds timer matches 60 run scoreboard players add traderminutes timer 1
execute if score seconds timer matches 60 run scoreboard players set seconds timer 0

title @a actionbar ["",{"score":{"name":"minutes","objective":"timer"}},{"text":" : "},{"score":{"name":"seconds","objective":"timer"}}]

execute if score tradercanspawn timer matches 1 if score traderminutes timer matches 5 if score seconds timer matches 0 run function omg:trader/removetrader
execute if score tradercanspawn timer matches 1 if score traderminutes timer matches 5 if score seconds timer matches 0 run scoreboard players set traderminutes timer 0

execute if score seconds timer matches 0..60 run schedule function omg:timer/seconds 1s