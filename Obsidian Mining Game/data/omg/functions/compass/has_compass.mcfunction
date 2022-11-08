#Any player without a compass in their inventory will have thier score set to 0
execute if entity @a[nbt=!{Inventory:[{id:"minecraft:compass",tag:{tracker_compass:1b}}]}] run scoreboard players set @s hasCompass 0

#Constantly checks for compass in players inventory.
scoreboard players remove @a hasCompass 1
scoreboard players set @a offhandHasItem 0
scoreboard players set @a[nbt={Inventory:[{Slot:-106b}]}] offhandHasItem 1
item replace entity @a[scores={hasCompass=0,offhandHasItem=0}] weapon.offhand with compass{tracker_compass:1b}
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:compass",tag:{tracker_compass:1b}}]}] hasCompass 5 

#Gives players who don't have compass (score hasCompass 0) will gain a compass. Dependant on if they have something in thier off hand or not.
give @a[scores={hasCompass=0,offhandHasItem=1..}] compass{tracker_compass:1b}

#Updates the players score to show they have compass now
scoreboard players set @a[scores={hasCompass=0}] hasCompass 5