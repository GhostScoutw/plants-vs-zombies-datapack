
execute at @n[tag=this.plot] positioned ~-2 ~ ~ if entity @e[tag=zombie,dx=27,dz=11,dy=1.5] at @s positioned ~ ~-0.5 ~-0.25 if entity @e[tag=zombie,dx=-27,dz=-0.5,dy=1.5] at @s run tag @s add can_attack




execute if score @s generic.fire_rate matches ..0 run function pvz:plant/peashooter/shoot





tag @s remove can_attack