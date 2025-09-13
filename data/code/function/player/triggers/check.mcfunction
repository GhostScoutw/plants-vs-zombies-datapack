scoreboard players enable @s claim
scoreboard players enable @s unclaim

execute unless score @s claim matches 0 run function code:player/triggers/claim
execute unless score @s unclaim matches 0 run function code:player/triggers/unclaim