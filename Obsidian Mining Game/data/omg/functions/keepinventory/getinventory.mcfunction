data remove storage minecraft:pinventory Inventory
data modify storage minecraft:pinventory Inventory insert 0 from entity @s Inventory[]
data remove storage minecraft:pinventory Inventory[{Slot:0b}]
data remove storage minecraft:pinventory Inventory[{Slot:1b}]
data remove storage minecraft:pinventory Inventory[{Slot:2b}]
data remove storage minecraft:pinventory Inventory[{Slot:3b}]
data remove storage minecraft:pinventory Inventory[{Slot:4b}]
data remove storage minecraft:pinventory Inventory[{Slot:5b}]
data remove storage minecraft:pinventory Inventory[{Slot:6b}]
data remove storage minecraft:pinventory Inventory[{Slot:7b}]
data remove storage minecraft:pinventory Inventory[{Slot:8b}]
data modify storage pinventory Inventory[{Slot:27b}].Slot set value 0b
data modify storage pinventory Inventory[{Slot:28b}].Slot set value 1b
data modify storage pinventory Inventory[{Slot:29b}].Slot set value 2b
data modify storage pinventory Inventory[{Slot:30b}].Slot set value 3b
data modify storage pinventory Inventory[{Slot:31b}].Slot set value 4b
data modify storage pinventory Inventory[{Slot:32b}].Slot set value 5b
data modify storage pinventory Inventory[{Slot:33b}].Slot set value 6b
data modify storage pinventory Inventory[{Slot:34b}].Slot set value 7b
data modify storage pinventory Inventory[{Slot:35b}].Slot set value 8b

setblock 42069 69 42069 minecraft:yellow_shulker_box
data modify block 42069 69 42069 Items set from storage minecraft:pinventory Inventory
