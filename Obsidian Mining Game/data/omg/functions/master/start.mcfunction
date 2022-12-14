##Sets gamestate to be active
scoreboard players set currentstate gamestate 1

##Resets Players Scores & Inventory
clear @a
advancement revoke @a everything
time set 0
gamerule doDaylightCycle true
gamerule doWeatherCycle true
gamerule disableRaids false
gamerule doInsomnia true
gamerule doMobSpawning true
gamerule doPatrolSpawning false

##Sorts out teams
execute if score Teams gamestate matches 0 run team join player @a[team=!admin,team=!spectator]

##Sets up scoreboards
scoreboard objectives setdisplay sidebar score
scoreboard objectives setdisplay belowName health
execute if score TotalToGet score matches ..0 run scoreboard players set TotalToGet score 8

##Sets Teams To Survival & Anyone On The Spectator/Admin Team Gets Put In Spectator/Admin Mode & Given Night Vision
gamemode survival @a[team=!spectator]
gamemode spectator @a[team=admin]
gamemode spectator @a[team=spectator]
effect clear @a
effect give @a[team=admin] night_vision 99999 0 true
effect give @a[team=spectator] night_vision 99999 0 true

##Removes The Lobby

execute at @e[tag=lobby_locator] run fill ~5 ~ ~5 ~-5 ~6 ~-5 minecraft:air replace
kill @e[tag=lobby_locator]
kill @e[type=minecraft:item]

##Set Up Players
effect give @a minecraft:saturation 1 20
effect give @a minecraft:regeneration 2 255

##Spreads players
execute if score Teams gamestate matches 0 run spreadplayers 0 0 200 500 false @a[team=!admin,team=!spectator]
execute if score Teams gamestate matches 1 run spreadplayers 0 0 200 500 true @a[team=!admin,team=!spectator]

##Dificulty made sure to be hard
difficulty hard

## Reset Deaths scoareboards

scoreboard players reset @a death

##Starts Timer
function omg:timer/timer

##Starts Points Checker
function omg:master/points_loop

##Set Up Players
gamerule fallDamage true
function omg:fortunepick/first_pick

##Sets players spawnpoint to where they are standing
execute as @a at @s run spawnpoint @s ~ ~ ~