execute as @s run scoreboard players operation obsidiantodrop obsidianinventory = @s obsidianinventory
clear @s obsidian
execute as @s run function omg:keepinventory/getinventory
execute as @s run function omg:keepinventory/clear_inventory
scoreboard players set @s deathcheck 0

execute store result storage minecraft:death Pos[0] double 1.0 run data get entity @s LastDeathLocation.pos[0]
execute store result storage minecraft:death Pos[1] double 1.0 run data get entity @s LastDeathLocation.pos[1]
execute store result storage minecraft:death Pos[2] double 1.0 run data get entity @s LastDeathLocation.pos[2]

summon marker 42069 80 42069 {Tags:["death"]}
tag @s add this
execute as @e[type=marker,tag=death] run function omg:keepinventory/at_pos
tag @s remove this
