execute at @e[name="tradermarker"] run place template omg:obsidiantrader ~ ~ ~
tellraw @a {"text":"The Obsidian Trader has moved!","bold":true,"color":"dark_purple"}
function omg:compass/first_compass
kill @e[name="tmarker"]
scoreboard players set TraderMoving traderuses 0