#Sets the loop to an active state, so that masterfunc won't call it again
execute unless data storage minecraft:general/secondtimer active run data merge storage minecraft:general/secondtimer {active:1}


#Functions to call once per second

execute if score currentstate gamestate matches 0 run scoreboard players operation TotalToGet setup = TotalToGet score

execute if score currentstate gamestate matches 0 run function omg:master/pregame
execute if score currentstate gamestate matches 1 run function omg:master/during_game

execute if score Teams gamestate matches 0 if score ObsidianDebuff setup matches 1 run function omg:master/debuff
execute if score Teams gamestate matches 1 if score ObsidianDebuff setup matches 1 run function omg:master/debuffteams
execute if score tradercanspawn timer matches 1 if score TraderProtection setup matches 1 run function omg:trader/traderprotection

function omg:master/obsidian_tracking
function omg:master/no_nether
function omg:compass/compass_dropped
execute if score currentstate gamestate matches 1 if score tradercanspawn timer matches 1 run function omg:compass/has_compass
function omg:keepinventory/deathcheck

execute if score FortunePick setup matches 1 run function omg:fortunepick/pick_dropped
execute if score FortunePick setup matches 1 run function omg:fortunepick/has_pick

execute as @e[limit=1,name="tradermarker"] at @s run function omg:compass/trackedtrader

execute if score tradercanspawn timer matches 1 run function omg:trader/detectuses

#Just in case, to maintain timing integrity
schedule clear omg:master/secondmaster

#Loops the function once per second
schedule function omg:master/secondmaster 1s