tag @s add this.zombie
execute as @a if score @s generic.id = @n[tag=this.zombie] generic.id run tag @s add this.player
execute as @e[tag=plot.root] if score @s plot.id = @n[tag=this.zombie] plot.id run tag @s add this.plot

execute as @s[tag=zombie,tag=zombie.normal,tag=!death] run function pvz:zombie/normal/tick

execute if score @s[tag=!death] generic.health matches ..0 run function pvz:zombie/die

tag @n[tag=this.plot] remove this.plot
tag @p[tag=this.player] remove this.player
tag @s remove this.zombie