execute if entity @s[tag=!stop_walk,tag=!eating,tag=!death,tag=!buttered] \
    if block ^ ^ ^0.25 air run function pvz:zombie/normal/walk


execute if entity @s[tag=!eating] if entity @n[tag=plant,distance=..1] run function pvz:zombie/normal/set_eat

execute if entity @s[tag=eating] unless entity @n[tag=plant,distance=..1] run function pvz:zombie/normal/set_walk

execute if entity @s[tag=eating] run function pvz:zombie/normal/eating
