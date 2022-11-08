setblock 42069 64 42069 shulker_box
data remove block 42069 64 42069 Items
data modify block 42069 64 42069 Items[] set value {id:"compass",Count:1b,tag:{tracker_compass:1b,LodestoneDimension:"overworld",LodestoneTracked:0b,LodestonePos:{X:0,Y:0,Z:0}}}
execute store result block 42069 64 42069 Items[0].tag.LodestonePos.X int 1 run data get entity @e[limit=1,name="tradermarker"] Pos[0]
data modify block 42069 64 42069 Items[0].tag.LodestonePos.Y set value 0
execute store result block 42069 64 42069 Items[0].tag.LodestonePos.Z int 1 run data get entity @e[limit=1,name="tradermarker"] Pos[2]

execute as @a[team=player,nbt={Inventory:[{tag:{tracker_compass:1b}}]}] run function omg:compass/refresh_compass
