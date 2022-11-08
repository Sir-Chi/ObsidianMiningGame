#Sets the loop to an active state, so that masterfunc won't call it again
execute unless data storage minecraft:general/secondtimer active run data merge storage minecraft:general/secondtimer {active:1}


#Functions to call once per second

execute if score currentstate gamestate matches 0 run function omg:master/pregame
execute if score currentstate gamestate matches 1 run function omg:master/during_game

function omg:master/obsidian_tracking
function omg:master/no_nether
function omg:compass/compass_dropped
function omg:compass/has_compass
function omg:keepinventory/deathcheck

execute as @a[nbt={Inventory:[{id:"minecraft:netherite_scrap"}]}] run function omg:master/points_tracking

execute as @e[limit=1,name="tradermarker"] at @s run function omg:compass/trackedtrader

#Just in case, to maintain timing integrity
schedule clear omg:master/secondmaster

#Loops the function once per second
schedule function omg:master/secondmaster 1s