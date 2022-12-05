#Any player without a iron pick in their inventory will have thier score set to 0
execute if entity @a[nbt=!{Inventory:[{id:"minecraft:iron_pickaxe",tag:{fortune_pick:1b}}]}] run scoreboard players set @s hasPick 0

#Constantly checks for iron pick in players inventory.
scoreboard players remove @a hasPick 1
scoreboard players set @a offhandHasItem 0
scoreboard players set @a[nbt={Inventory:[{Slot:-106b}]}] offhandHasItem 1
item replace entity @a[scores={hasPick=0,offhandHasItem=0}] weapon.offhand with iron_pickaxe{display:{Lore:['{"text":"O Fortuna","color":"dark_purple","italic":true}']},Unbreakable:1b,fortune_pick:1b,Enchantments:[{id:"minecraft:fortune",lvl:2s}]}
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:iron_pickaxe",tag:{fortune_pick:1b}}]}] hasPick 5 

#Gives players who don't have iron pick (score hasPick 0) will gain a iron pick. Dependant on if they have something in thier off hand or not.
give @a[scores={hasPick=0,offhandHasItem=1..}] iron_pickaxe{display:{Lore:['{"text":"O Fortuna","color":"dark_purple","italic":true}']},Unbreakable:1b,fortune_pick:1b,Enchantments:[{id:"minecraft:fortune",lvl:2s}]} 1

#Updates the players score to show they have iron pick now
scoreboard players set @a[scores={hasPick=0}] hasPick 5
