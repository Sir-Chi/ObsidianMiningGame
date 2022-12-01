##Sets gamestate to be over
scoreboard players set currentstate gamestate 2

##Stops timer
schedule clear omg:timer/seconds

##Stops Points Checker
schedule clear omg:master/points_loop
schedule clear omg:master/points_loop

##Announce who has won
execute if score Teams gamestate matches 0 run tellraw @a ["",{"selector":"@s[scores={score=32}]","color":"gold"},{"text":" has won OMG!","color":"gold"}]
execute if score Teams gamestate matches 1 if score AquaTeam score = TotalToGet score as @p[team=aqua] run tellraw @a ["",{"text":"Aqua Team","color":"aqua"},{"text":" has won OMG!","color":"gold"}]
execute if score Teams gamestate matches 1 if score BlueTeam score = TotalToGet score as @p[team=blue] run tellraw @a ["",{"text":"Blue Team","color":"blue"},{"text":" has won OMG!","color":"gold"}]
execute if score Teams gamestate matches 1 if score GoldTeam score = TotalToGet score as @p[team=gold] run tellraw @a ["",{"text":"Gold Team","color":"gold"},{"text":" has won OMG!","color":"gold"}]
execute if score Teams gamestate matches 1 if score GreenTeam score = TotalToGet score as @p[team=green] run tellraw @a ["",{"text":"Green Team","color":"green"},{"text":" has won OMG!","color":"gold"}]
execute if score Teams gamestate matches 1 if score MagentaTeam score = TotalToGet score as @p[team=magenta] run tellraw @a ["",{"text":"Magenta Team","color":"light_purple"},{"text":" has won OMG!","color":"gold"}]
execute if score Teams gamestate matches 1 if score PurpleTeam score = TotalToGet score as @p[team=purple] run tellraw @a ["",{"text":"Purple Team","color":"dark_purple"},{"text":" has won OMG!","color":"gold"}]
execute if score Teams gamestate matches 1 if score RedTeam score = TotalToGet score as @p[team=red] run tellraw @a ["",{"text":"Red Team","color":"red"},{"text":" has won OMG!","color":"gold"}]
execute if score Teams gamestate matches 1 if score YellowTeam score = TotalToGet score as @p[team=yellow] run tellraw @a ["",{"text":"Yellow Team","color":"yellow"},{"text":" has won OMG!","color":"gold"}]

tellraw @a ["",{"text":"Game ended in ","color":"gold"},{"score":{"name":"minutes","objective":"timer"},"color":"dark_aqua"},{"text":":","color":"dark_aqua"},{"score":{"name":"seconds","objective":"timer"},"color":"dark_aqua"}]

##Displaty deaths in tab bar
tellraw @a {"text":"Deaths now displayed in tab list! [Press TAB]","bold":true,"color":"gold"}
scoreboard objectives setdisplay list death

##Set difficulty to peaceful
difficulty peaceful

effect clear @a
effect give @a minecraft:saturation 1 20
effect give @a minecraft:regeneration 2 255
execute as @a run attribute @s minecraft:generic.movement_speed base set 0.100000001490111612

gamerule doDaylightCycle false

execute as @a at @s run playsound music.credits music @s ~ ~ ~
