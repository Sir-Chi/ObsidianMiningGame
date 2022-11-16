execute at @e[name="tradermarker"] run fill ~ ~ ~ ~6 ~3 ~4 air replace minecraft:mangrove_door
execute at @e[name="tradermarker"] run fill ~ ~ ~ ~6 ~3 ~4 air
execute at @e[name="tradermarker"] run kill @e[name="Obsidian Trader",distance=..7]
execute at @e[name="tradermarker"] run kill @e[name="Obsidian Trader Llama",distance=..7]

kill @e[name="tradermarker"]
forceload remove all 
forceload add 42069 42069
data modify block 42069 64 42069 Items[] set value {id:"compass",Count:1b,tag:{display:{Name:'{"text":"Trader Tracker"}',Lore:['{"text":"Searching for the Obsidian Trader"}']},tracker_compass:1b,LodestoneDimension:"nether",LodestoneTracked:0b,LodestonePos:{X:0,Y:0,Z:0}}}
execute as @a[team=player,nbt={Inventory:[{tag:{tracker_compass:1b}}]}] run function omg:compass/refresh_compass

function omg:randomiser/range
function omg:trader/random_location/chunk_load
