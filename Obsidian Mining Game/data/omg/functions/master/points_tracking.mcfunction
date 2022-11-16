clear @s netherite_scrap 1
execute if score Teams gamestate matches 0 run scoreboard players add @s score 1
execute if score Teams gamestate matches 1 if entity @s[team=aqua] run scoreboard players add AquaTeam score 1
execute if score Teams gamestate matches 1 if entity @s[team=blue] run scoreboard players add BlueTeam score 1
execute if score Teams gamestate matches 1 if entity @s[team=gold] run scoreboard players add GoldTeam score 1
execute if score Teams gamestate matches 1 if entity @s[team=green] run scoreboard players add GreenTeam score 1
execute if score Teams gamestate matches 1 if entity @s[team=magenta] run scoreboard players add MagentaTeam score 1
execute if score Teams gamestate matches 1 if entity @s[team=purple] run scoreboard players add PurpleTeam score 1
execute if score Teams gamestate matches 1 if entity @s[team=red] run scoreboard players add RedTeam score 1
execute if score Teams gamestate matches 1 if entity @s[team=yellow] run scoreboard players add YellowTeam score 1

execute unless score currentstate gamestate matches 2 if score Teams gamestate matches 0 if score @s score = TotalToGet score as @s run function omg:master/win
execute unless score currentstate gamestate matches 2 if score Teams gamestate matches 1 if score AquaTeam score = TotalToGet score as @p[team=aqua] run function omg:master/win
execute unless score currentstate gamestate matches 2 if score Teams gamestate matches 1 if score BlueTeam score = TotalToGet score as @p[team=blue] run function omg:master/win
execute unless score currentstate gamestate matches 2 if score Teams gamestate matches 1 if score GoldTeam score = TotalToGet score as @p[team=gold] run function omg:master/win
execute unless score currentstate gamestate matches 2 if score Teams gamestate matches 1 if score GreenTeam score = TotalToGet score as @p[team=green] run function omg:master/win
execute unless score currentstate gamestate matches 2 if score Teams gamestate matches 1 if score MagentaTeam score = TotalToGet score as @p[team=magenta] run function omg:master/win
execute unless score currentstate gamestate matches 2 if score Teams gamestate matches 1 if score PurpleTeam score = TotalToGet score as @p[team=purple] run function omg:master/win
execute unless score currentstate gamestate matches 2 if score Teams gamestate matches 1 if score RedTeam score = TotalToGet score as @p[team=red] run function omg:master/win
execute unless score currentstate gamestate matches 2 if score Teams gamestate matches 1 if score YellowTeam score = TotalToGet score as @p[team=yellow] run function omg:master/win
