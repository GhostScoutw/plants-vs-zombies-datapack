
function animated_java:peashooter/summon {args:{}}
execute as @n[tag=aj.peashooter.root,tag=!plant] run tag @s add peashooter
execute as @n[tag=aj.peashooter.root,tag=!plant] run rotate @s 90 0
execute as @n[tag=aj.peashooter.root,tag=!plant] run function animated_java:peashooter/animations/idle/play

execute as @n[tag=aj.peashooter.root,tag=!plant] run scoreboard players set @s generic.health 200

execute as @n[tag=aj.peashooter.root,tag=!plant] run tag @s add plant

