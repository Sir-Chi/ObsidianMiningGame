clear @s netherite_scrap 1
scoreboard players add @s score 1

execute unless score currentstate gamestate matches 2 if score @s score = TotalToGet score as @s run function omg:master/win