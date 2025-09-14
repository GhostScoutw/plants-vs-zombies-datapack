
execute at @n[tag=this.plot] positioned ~-5 ~-2 ~ unless entity @s[dx=30,dz=11,dy=5] run return run kill @s

execute positioned ~ ~-1.1 ~ as @n[tag=these.zombies,distance=..1] run function pvz:projectile/pea/hit


tp @s ^ ^ ^0.2