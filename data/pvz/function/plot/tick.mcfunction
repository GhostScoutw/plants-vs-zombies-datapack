tag @s add this.plot

execute as @a if score @s generic.id = @n[tag=this.plot] generic.id run tag @s add this.player

execute unless entity @p[tag=this.player] run function pvz:plot/unclaim


tag @p[tag=this.player] remove this.player
tag @s remove this.plot

