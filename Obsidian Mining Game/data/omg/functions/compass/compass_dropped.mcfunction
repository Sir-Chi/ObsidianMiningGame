#Deletes the droped compass item entity.
kill @e[tag=droppedCompass]

execute as @e[type=item,nbt={Item:{id:"minecraft:compass",tag:{tracker_compass:1b}}}] run tag @e[type=item,nbt={Item:{id:"minecraft:compass",tag:{tracker_compass:1b}}}] add droppedCompass

kill @e[tag=droppedCompass]