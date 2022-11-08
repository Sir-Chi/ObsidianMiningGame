
execute as @a store result score @s obsidianinventory run clear @s minecraft:obsidian 0
execute as @a[scores={obsidianinventory=1..}] run effect give @a[scores={obsidianinventory=1..}] glowing 10 0 true 