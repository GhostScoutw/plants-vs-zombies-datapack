$scoreboard players remove @s generic.health $(dmg)

execute if entity @s[tag=eating_effect] run function pvz:plant/retaliation

execute if score @s generic.health matches ..0 run function pvz:plant/die