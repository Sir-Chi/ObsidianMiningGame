##Sets gamestate to be over
scoreboard players set currentstate gamestate 2

##Stops timer
schedule clear omg:timer/seconds

##Stops Points Checker
schedule clear omg:master/points_loop
schedule clear omg:master/points_loop

scoreboard players set seconds timer 0
scoreboard players set minutes timer 0
scoreboard players set minutes timer 0

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

##Resets Game Setup
scoreboard players reset @a death
scoreboard players reset @a score
scoreboard players reset @a obsidianinventory
scoreboard players set TotalToGet score 32

##Runs set-up function
function omg:master/setup