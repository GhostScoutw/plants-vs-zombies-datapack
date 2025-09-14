tag @s add this.extra
execute as @a if score @s generic.id = @n[tag=this.extra] generic.id run tag @s add this.player

execute if entity @s[tag=sun] run function pvz:extra/sun/tick

scoreboard players remove @s[scores={generic.lifetime=1..}] generic.lifetime 1

execute if score @s generic.lifetime matches ..0 on passengers run kill @s
execute if score @s generic.lifetime matches ..0 run kill @s

tag @p[tag=this.player] remove this.player
tag @s remove this.extra