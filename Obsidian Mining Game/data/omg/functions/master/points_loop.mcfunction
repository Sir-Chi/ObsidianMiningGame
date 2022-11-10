
#Functions to call once per 5 ticks

execute as @a[nbt={Inventory:[{id:"minecraft:netherite_scrap"}]}] run function omg:master/points_tracking

#Just in case, to maintain timing integrity
schedule clear omg:master/points_loop

#Loops the function once per second
schedule function omg:master/points_loop 5t