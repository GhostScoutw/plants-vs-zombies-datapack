
execute as @n[tag=plant,distance=..1] run function pvz:plant/damage {dmg:1}

execute unless entity @n[tag=plant,distance=..1] run playsound entity.player.burp hostile @a ~ ~ ~ 1.5 0.8
execute unless entity @n[tag=plant,distance=..1] run function pvz:zombie/normal/set_walk