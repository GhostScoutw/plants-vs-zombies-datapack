
function animated_java:sunflower/summon {args:{}}
tag @n[tag=aj.sunflower.root,tag=!plant] add sunflower
rotate @n[tag=aj.sunflower.root,tag=!plant] 90 0
execute as @n[tag=aj.sunflower.root,tag=!plant] run function animated_java:sunflower/animations/idle/play

scoreboard players operation @n[tag=aj.sunflower.root,tag=!plant] generic.id = @s generic.id

scoreboard players set @n[tag=aj.sunflower.root,tag=!plant] generic.health 80
scoreboard players set @n[tag=aj.sunflower.root,tag=!plant] generic.fire_rate 300
scoreboard players set @n[tag=aj.sunflower.root,tag=!plant] generic.fire_delay 0
scoreboard players set @n[tag=aj.sunflower.root,tag=!plant] generic.delay 0

tag @n[tag=aj.sunflower.root,tag=!plant] add plant

