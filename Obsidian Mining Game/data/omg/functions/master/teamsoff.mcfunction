scoreboard players set Teams gamestate 0

clear @a[team=!admin]

##Removes The Join Team Signs
execute at @e[tag=lobby_locator] run setblock ~4 ~2 ~-4 air replace
execute at @e[tag=lobby_locator] run setblock ~4 ~3 ~-3 air replace
execute at @e[tag=lobby_locator] run setblock ~4 ~2 ~-2 air replace
execute at @e[tag=lobby_locator] run setblock ~4 ~3 ~-1 air replace
execute at @e[tag=lobby_locator] run setblock ~4 ~3 ~1 air replace
execute at @e[tag=lobby_locator] run setblock ~4 ~2 ~2 air replace
execute at @e[tag=lobby_locator] run setblock ~4 ~3 ~3 air replace
execute at @e[tag=lobby_locator] run setblock ~4 ~2 ~4 air replace
execute at @e[tag=lobby_locator] run setblock ~4 ~2 ~ air replace

## Empties All The Teams
team empty aqua
team empty blue
team empty gold
team empty green
team empty magenta
team empty purple
team empty red
team empty yellow
team empty spectator