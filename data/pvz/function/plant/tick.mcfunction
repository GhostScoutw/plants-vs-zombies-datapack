tag @s add this.plant
execute as @a if score @s generic.id = @n[tag=this.plant] generic.id run tag @s add this.player
execute as @e[tag=plot.root] if score @s generic.id = @n[tag=this.plant] generic.id run tag @s add this.plot
execute as @e[tag=zombie] if score @s generic.id = @n[tag=this.plant] generic.id run tag @s add these.zombies


execute if entity @s[tag=peashooter] run function pvz:plant/peashooter/tick
execute if entity @s[tag=sunflower] run function pvz:plant/sunflower/tick

scoreboard players remove @s[scores={generic.fire_rate=1..}] generic.fire_rate 1
scoreboard players remove @s[scores={generic.fire_delay=1..}] generic.fire_delay 1
scoreboard players remove @s[scores={generic.delay=1..}] generic.delay 1

execute unless entity @p[tag=this.player] run function pvz:plant/die

tag @e[tag=these.zombies] remove these.zombies
tag @n[tag=this.plot] remove this.plot
tag @p[tag=this.player] remove this.player
tag @s remove this.plant