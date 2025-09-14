
function animated_java:peashooter/summon {args:{}}
tag @n[tag=aj.peashooter.root,tag=!plant] add peashooter
rotate @n[tag=aj.peashooter.root,tag=!plant] 90 0
execute as @n[tag=aj.peashooter.root,tag=!plant] run function animated_java:peashooter/animations/idle/play

scoreboard players operation @n[tag=aj.peashooter.root,tag=!plant] generic.id = @s generic.id

scoreboard players set @n[tag=aj.peashooter.root,tag=!plant] generic.health 80
scoreboard players set @n[tag=aj.peashooter.root,tag=!plant] generic.fire_rate 0
scoreboard players set @n[tag=aj.peashooter.root,tag=!plant] generic.fire_delay 0
scoreboard players set @n[tag=aj.peashooter.root,tag=!plant] generic.delay 0

tag @n[tag=aj.peashooter.root,tag=!plant] add plant

