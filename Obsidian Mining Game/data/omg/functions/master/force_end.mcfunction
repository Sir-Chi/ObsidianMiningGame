##Sets gamestate to be over
scoreboard players set currentstate gamestate 2

##Stops timer
schedule clear omg:timer/seconds

##Stops Points Checker
schedule clear omg:master/points_loop
schedule clear omg:master/points_loop

scoreboard players set seconds timer 0
scoreboard players set minutes timer 0
scoreboard players set traderseconds timer 0
scoreboard players set traderminutes timer 0

##Resets trader
execute at @e[name="tradermarker"] run fill ~ ~ ~ ~6 ~3 ~4 air replace minecraft:mangrove_door
execute at @e[name="tradermarker"] run fill ~ ~ ~ ~6 ~3 ~4 air
execute at @e[name="tradermarker"] run kill @e[name="Obsidian Trader",distance=..7]
execute at @e[name="tradermarker"] run kill @e[name="Obsidian Trader Llama",distance=..7]

kill @e[name="tradermarker"]
forceload remove all 
forceload add 42069 42069

##Announces game has been ended manually
tellraw @a {"text":"Game Ended Manually!","bold":true,"color":"gray"}

##Resets gamerules and commands etc
gamerule doDaylightCycle false

##Resets Players Inventory & Set Up
effect clear @a
xp set @a 0 levels
clear @a
difficulty peaceful
recipe take @a *
advancement revoke @a everything

effect clear @a
effect give @a minecraft:saturation 1 20
effect give @a minecraft:regeneration 2 255

## Empties All The Teams
team empty player
team empty spectator
team empty admin
team empty aqua
team empty blue
team empty gold
team empty green
team empty magenta
team empty purple
team empty red
team empty yellow

##Resets Game Setup
scoreboard players reset @a death
scoreboard players reset @a score
scoreboard players reset @a obsidianinventory
scoreboard players set TotalToGet score 32

##Runs set-up function
function omg:master/setup