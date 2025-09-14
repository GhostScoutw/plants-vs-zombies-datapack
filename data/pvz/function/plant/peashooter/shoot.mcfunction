scoreboard players set @s generic.fire_rate 30

execute if entity @s[tag=!can_attack] run return fail

execute positioned ~ ~1 ~ run function pvz:projectile/pea/create

playsound block.crafter.fail master @a ~ ~ ~ 5 2 1