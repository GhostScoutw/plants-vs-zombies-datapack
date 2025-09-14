tag @s add this.projectile
execute as @a if score @s generic.id = @n[tag=this.projectile] generic.id run tag @s add this.player
execute as @e[tag=zombie] if score @s generic.id = @n[tag=this.projectile] generic.id run tag @s add these.zombies
execute as @e[tag=plot.root] if score @s generic.id = @n[tag=this.projectile] generic.id run tag @s add this.plot


execute if entity @s[tag=pea] run function pvz:projectile/pea/tick

scoreboard players remove @s[scores={generic.lifetime=1..}] generic.lifetime 1

execute if score @s generic.lifetime matches ..0 run kill @s

tag @n[tag=this.plot] remove this.plot
tag @e[tag=these.zombies] remove these.zombies
tag @p[tag=this.player] remove this.player
tag @s remove this.projectile