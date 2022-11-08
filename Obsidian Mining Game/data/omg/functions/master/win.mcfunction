##Sets gamestate to be over
scoreboard players set currentstate gamestate 2

##Stops timer
schedule clear omg:timer/seconds

##Announce who has won
tellraw @a ["",{"selector":"@s[scores={score=32}]","color":"gold"},{"text":" has won OMG!","color":"gold"}]

tellraw @a ["",{"text":"Game ended in ","color":"gold"},{"score":{"name":"minutes","objective":"timer"},"color":"dark_aqua"},{"text":" : ","color":"dark_aqua"},{"score":{"name":"seconds","objective":"timer"},"color":"dark_aqua"}]

##Displaty deaths in tab bar
tellraw @a {"text":"Deaths now displayed in tab list! [Press TAB]","bold":true,"color":"gold"}
scoreboard objectives setdisplay list death

##Set difficulty to peaceful
difficulty peaceful

effect clear @a
effect give @a minecraft:saturation 1 20
effect give @a minecraft:regeneration 2 255

gamerule doDaylightCycle false

execute as @a at @s run playsound music.credits record @s ~ ~ ~
