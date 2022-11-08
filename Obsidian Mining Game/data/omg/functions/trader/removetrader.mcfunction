execute at @e[name="tradermarker"] run fill ~ ~ ~ ~6 ~3 ~4 air replace minecraft:mangrove_door
execute at @e[name="tradermarker"] run fill ~ ~ ~ ~6 ~3 ~4 air
execute at @e[name="tradermarker"] run kill @e[name="Obsidian Trader",distance=..7]
execute at @e[name="tradermarker"] run kill @e[name="Obsidian Trader Llama",distance=..7]

kill @e[name="tradermarker"]
forceload remove all 
forceload add 42069 42069

function omg:randomiser/range
function omg:trader/random_location/chunk_load
