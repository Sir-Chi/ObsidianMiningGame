execute at @e[name="tradermarker"] unless block ~ ~1 ~2 air unless block ~ ~1 ~2 water run setblock ~ ~1 ~2 air
execute at @e[name="tradermarker"] unless block ~ ~1 ~3 air unless block ~ ~1 ~3 water run setblock ~ ~1 ~3 air
execute at @e[name="tradermarker"] unless block ~ ~2 ~1 air unless block ~ ~2 ~1 water run setblock ~ ~2 ~1 air
execute at @e[name="tradermarker"] unless block ~ ~2 ~2 air unless block ~ ~2 ~2 water run setblock ~ ~2 ~2 air
execute at @e[name="tradermarker"] unless block ~ ~2 ~3 air unless block ~ ~2 ~3 water run setblock ~ ~2 ~3 air
execute at @e[name="tradermarker"] unless block ~1 ~2 ~1 air unless block ~1 ~2 ~1 water run setblock ~1 ~2 ~1 air
execute at @e[name="tradermarker"] unless block ~1 ~2 ~3 air unless block ~1 ~2 ~3 water run setblock ~1 ~2 ~3 air

execute at @e[name="tradermarker"] unless block ~ ~3 ~1 air unless block ~ ~3 ~1 water run setblock ~ ~3 ~1 air
execute at @e[name="tradermarker"] unless block ~ ~3 ~2 air unless block ~ ~3 ~2 water run setblock ~ ~3 ~2 air
execute at @e[name="tradermarker"] unless block ~ ~3 ~3 air unless block ~ ~3 ~3 water run setblock ~ ~3 ~3 air
execute at @e[name="tradermarker"] unless block ~1 ~3 ~1 air unless block ~1 ~3 ~1 water run setblock ~1 ~3 ~1 air
execute at @e[name="tradermarker"] unless block ~1 ~3 ~2 air unless block ~1 ~3 ~2 water run setblock ~1 ~3 ~2 air
execute at @e[name="tradermarker"] unless block ~1 ~3 ~3 air unless block ~1 ~3 ~3 water run setblock ~1 ~3 ~3 air

execute at @e[name="tradermarker"] unless block ~2 ~1 ~2 air unless block ~2 ~1 ~2 water run setblock ~2 ~1 ~2 air
execute at @e[name="tradermarker"] unless block ~2 ~2 ~2 air unless block ~2 ~2 ~2 water run setblock ~2 ~2 ~2 air

execute at @e[name="tradermarker"] unless block ~2 ~1 ~1 spruce_stairs[facing=east,half=top,shape=straight] unless block ~2 ~1 ~1 spruce_stairs[facing=east,half=top,shape=straight,waterlogged=true] run setblock ~2 ~1 ~1 spruce_stairs[facing=east,half=top,shape=straight]
execute at @e[name="tradermarker"] unless block ~2 ~2 ~1 minecraft:oak_fence[east=true,north=false,south=true,west=false] unless block ~2 ~2 ~1 minecraft:oak_fence[east=true,north=false,south=true,waterlogged=true,west=false] run setblock ~2 ~2 ~1 minecraft:oak_fence[east=true,north=false,south=true,west=false]
execute at @e[name="tradermarker"] unless block ~1 ~1 ~1 acacia_wall_sign[facing=west] unless block ~1 ~1 ~1 acacia_wall_sign[facing=west,waterlogged=true] run setblock ~1 ~1 ~1 acacia_wall_sign[facing=west]

execute at @e[name="tradermarker"] unless block ~2 ~1 ~3 spruce_stairs[facing=east,half=top,shape=straight] unless block ~2 ~1 ~1 spruce_stairs[facing=east,half=top,shape=straight,waterlogged=true] run setblock ~2 ~1 ~1 spruce_stairs[facing=east,half=top,shape=straight]
execute at @e[name="tradermarker"] unless block ~2 ~2 ~3 minecraft:oak_fence[east=true,north=false,south=true,west=false] unless block ~2 ~2 ~1 minecraft:oak_fence[east=true,north=false,south=true,waterlogged=true,west=false] run setblock ~2 ~2 ~1 minecraft:oak_fence[east=true,north=false,south=true,west=false]
execute at @e[name="tradermarker"] unless block ~1 ~1 ~3 acacia_wall_sign[facing=west] unless block ~1 ~1 ~1 acacia_wall_sign[facing=west,waterlogged=true] run setblock ~1 ~1 ~1 acacia_wall_sign[facing=west]