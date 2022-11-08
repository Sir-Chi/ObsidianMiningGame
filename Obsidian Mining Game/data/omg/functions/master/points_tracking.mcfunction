clear @s netherite_scrap 1
scoreboard players add @s score 1

execute unless score currentstate gamestate matches 2 if score @s score matches 32.. as @s[scores={score=32..}] run function omg:master/win