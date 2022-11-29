scoreboard players set Teams gamestate 1

##Summons Signs In The Lobby So Players Can Choose Teams
execute at @e[tag=lobby_locator] run setblock ~4 ~2 ~-4 dark_oak_wall_sign[facing=west]{Text2:'{"text":"Join","color":"blue","clickEvent":{"action":"run_command","value":"/team join blue @s"}}',Text3:'{"text":"Blue Team","color":"blue"}'} replace
execute at @e[tag=lobby_locator] run setblock ~4 ~3 ~-3 dark_oak_wall_sign[facing=west]{Text2:'{"text":"Join","color":"red","clickEvent":{"action":"run_command","value":"/team join red @s"}}',Text3:'{"text":"Red Team","color":"red"}'} replace
execute at @e[tag=lobby_locator] run setblock ~4 ~2 ~-2 dark_oak_wall_sign[facing=west]{Text2:'{"text":"Join","color":"green","clickEvent":{"action":"run_command","value":"/team join green @s"}}',Text3:'{"text":"Green Team","color":"green"}'} replace
execute at @e[tag=lobby_locator] run setblock ~4 ~3 ~-1 dark_oak_wall_sign[facing=west]{Text2:'{"text":"Join","color":"yellow","clickEvent":{"action":"run_command","value":"/team join yellow @s"}}',Text3:'{"text":"Yellow Team","color":"yellow"}'} replace
execute at @e[tag=lobby_locator] run setblock ~4 ~3 ~1 dark_oak_wall_sign[facing=west]{Text2:'{"text":"Join","color":"light_purple","clickEvent":{"action":"run_command","value":"/team join magenta @s"}}',Text3:'{"text":"Magenta Team","color":"light_purple"}'} replace
execute at @e[tag=lobby_locator] run setblock ~4 ~2 ~2 dark_oak_wall_sign[facing=west]{Text2:'{"text":"Join","color":"aqua","clickEvent":{"action":"run_command","value":"/team join aqua @s"}}',Text3:'{"text":"Aqua Team","color":"aqua"}'} replace
execute at @e[tag=lobby_locator] run setblock ~4 ~3 ~3 dark_oak_wall_sign[facing=west]{Text2:'{"text":"Join","color":"gold","clickEvent":{"action":"run_command","value":"/team join gold @s"}}',Text3:'{"text":"Gold Team","color":"gold"}'} replace
execute at @e[tag=lobby_locator] run setblock ~4 ~2 ~4 dark_oak_wall_sign[facing=west]{Text2:'{"text":"Join","color":"dark_purple","clickEvent":{"action":"run_command","value":"/team join purple @s"}}',Text3:'{"text":"Purple Team","color":"dark_purple"}'} replace
execute at @e[tag=lobby_locator] run setblock ~4 ~2 ~ dark_oak_wall_sign[facing=west]{Text2:'{"text":"Be A","color":"gray","clickEvent":{"action":"run_command","value":"/team join spectator @s"}}',Text3:'{"text":"Spectator","color":"gray"}'} replace
