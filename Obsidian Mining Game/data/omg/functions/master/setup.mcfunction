## Setup World Spawn/Lobby

execute unless entity @e[tag=lobby_locator] run summon minecraft:marker 0 64 0 {Tags:["lobby_locator"]}
execute unless entity @e[tag=lobby_locator,tag=lobby_placed] run function omg:master/locate_lobby

##Set Players To Creative & Teleports Them To 0 0
gamemode creative @a
teleport @a 0 128 0

##Set Gamerules & Scoreboard

gamerule commandBlockOutput false
gamerule disableRaids true
gamerule doDaylightCycle false
gamerule doInsomnia false
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule fallDamage false
gamerule doWeatherCycle false
gamerule disableElytraMovementCheck true
gamerule keepInventory true

scoreboard objectives add death deathCount "Deaths"
scoreboard objectives add score dummy "Obsidian Turned In"
scoreboard players set TotalToGet score 32
scoreboard objectives add obsidianinventory dummy "Obsidian In Inventory"
scoreboard objectives setdisplay list obsidianinventory
scoreboard objectives add compass dummy
scoreboard objectives add hasCompass dummy
scoreboard objectives add offhandHasItem dummy
scoreboard objectives add gamestate dummy
scoreboard players set currentstate gamestate 0
scoreboard objectives add traderuses dummy
scoreboard players set TraderUses traderuses 0

## Set up randomiser
scoreboard objectives add math dummy
scoreboard objectives add constant dummy
scoreboard players set #2 constant 2
scoreboard players set #1000 constant 1000
scoreboard players set #10000 constant 10000
scoreboard players set #lcg constant 1103515245
function omg:randomiser/zprivate/init

scoreboard players set in math 1
scoreboard players set in1 math 600
function omg:randomiser/range

## World border set up
worldborder set 1000

##Timer
scoreboard objectives add timer dummy
scoreboard players set seconds timer 0
scoreboard players set minutes timer 0
scoreboard players set traderseconds timer 0
scoreboard players set traderminutes timer 0
scoreboard players set tradercanspawn timer 0

##Compass set up
forceload add 42069 42069
setblock 42069 64 42069 shulker_box
setblock 42069 63 42069 bedrock
data remove block 42069 64 42069 Items
data modify block 42069 64 42069 Items[] set value {id:"compass",Count:1b,tag:{display:{Name:'{"text":"Trader Tracker"}',Lore:['{"text":"Pointing to the Obsidian Trader"}']},tracker_compass:1b,LodestoneDimension:"overworld",LodestoneTracked:0b,LodestonePos:{X:0,Y:0,Z:0}}}
execute store result block 42069 64 42069 Items[0].tag.LodestonePos.X int 1 run data get entity @e[limit=1,name="tradermarker"] Pos[0]
data modify block 42069 64 42069 Items[0].tag.LodestonePos.Y set value 0
execute store result block 42069 64 42069 Items[0].tag.LodestonePos.Z int 1 run data get entity @e[limit=1,name="tradermarker"] Pos[2]

##Death Keep Inventory Setup
setblock 42069 69 42069 minecraft:yellow_shulker_box
scoreboard objectives add deathcheck deathCount
scoreboard objectives add hp health
data modify storage minecraft:death Pos set value [0.0d, 0.0d, 0.0d]

##Teams Setup
team add player "OMGPlayer"
team modify player color red
team add spectator "Spectator"
team modify spectator color gray
team add admin "Admin"
team modify admin color dark_red

##Spawn Lobby
place template qfe:lobby -6 99 -6

##Teleports Players Into Lobby
teleport @a 0 100 0
