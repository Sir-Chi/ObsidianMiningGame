# During game script

## Notifies all players that pvp is now allowed & Trader has now appeared

execute if score minutes timer matches 20 if score seconds timer matches 0 run function omg:master/announce_pvp_allowed
execute if score minutes timer matches 20 if score seconds timer matches 0 run function omg:trader/removetrader
execute if score minutes timer matches 20 if score seconds timer matches 0 run scoreboard players set tradercanspawn timer 1
execute if score minutes timer matches 20 if score seconds timer matches 0 run function omg:compass/first_compass
