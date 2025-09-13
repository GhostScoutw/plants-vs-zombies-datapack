tag @s add this.player
execute unless score @s generic.id matches -2147483648..2147483647 run function pvz:player/first_join

effect give @s saturation infinite 1 true

function pvz:player/triggers/check

execute as @e[tag=plot.root] if score @s generic.id = @p[tag=this.player] generic.id run tag @s add this.plot

execute if items entity @s weapon.mainhand stick at @s anchored eyes run function pvz:player/planting/preview/get

tag @n[tag=this.plot] remove this.plot
tag @s remove this.player