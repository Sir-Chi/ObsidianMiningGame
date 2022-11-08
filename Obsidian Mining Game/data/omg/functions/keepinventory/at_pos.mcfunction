data modify entity @s Pos set from storage minecraft:death Pos

execute as @s at @s run loot spawn ~ ~ ~ mine 42069 69 42069 stick{drop_contents:1b}
execute as @s at @s run function omg:keepinventory/obsidian_to_drop 
scoreboard players set obsidiantodrop obsidianinventory 0

kill @s