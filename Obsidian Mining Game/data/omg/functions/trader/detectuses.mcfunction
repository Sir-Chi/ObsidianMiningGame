
execute store result score TraderUses traderuses run data get entity @e[limit=1,name="Obsidian Trader"] Offers.Recipes[0].uses

execute if score TraderUses traderuses matches 8 run scoreboard players set traderseconds timer 0
execute if score TraderUses traderuses matches 8 run scoreboard players set traderminutes timer 0
execute if score TraderUses traderuses matches 8 run function omg:trader/removetrader
