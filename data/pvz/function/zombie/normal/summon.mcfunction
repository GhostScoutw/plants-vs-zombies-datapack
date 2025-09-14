
function animated_java:zombie/summon {args:{}}
execute as @n[tag=aj.zombie.root,tag=!zombie] run tag @s add zombie.normal
execute as @n[tag=aj.zombie.root,tag=!zombie] run function animated_java:zombie/variants/normal/apply
execute as @n[tag=aj.zombie.root,tag=!zombie] run rotate @s -90 0
execute as @n[tag=aj.zombie.root,tag=!zombie] run function animated_java:zombie/animations/walk/play

execute as @n[tag=aj.zombie.root,tag=!zombie] run tag @s add walking

execute as @n[tag=aj.zombie.root,tag=!zombie] run scoreboard players set @s generic.health 200

scoreboard players operation @n[tag=aj.zombie.root,tag=!zombie] generic.id = @s generic.id

execute as @n[tag=aj.zombie.root,tag=!zombie] run tag @s add zombie

