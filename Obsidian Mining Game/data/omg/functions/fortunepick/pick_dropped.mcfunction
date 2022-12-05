#Deletes the droped iron pick item entity.
kill @e[tag=droppedPick]

execute as @e[type=item,nbt={Item:{id:"minecraft:iron_pickaxe",tag:{fortune_pick:1b}}}] run tag @e[type=item,nbt={Item:{id:"minecraft:iron_pickaxe",tag:{fortune_pick:1b}}}] add droppedPick

kill @e[tag=droppedPick]