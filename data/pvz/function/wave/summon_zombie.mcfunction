
execute if data storage pvz:temp {wave:{position:"random"}} run tag @s add position.random
execute if data storage pvz:temp {wave:{position:"balanced"}} run tag @s add position.balanced


#random positions
execute if entity @s[tag=position.random] store result score lane temp run random value 1..6

execute if entity @s[tag=position.random,scores={wave.lanes=1}] run scoreboard players set lane temp 3
execute if entity @s[tag=position.random,scores={wave.lanes=3}] store result score lane temp run random value 2..4


#balanced positions

execute if entity @s[tag=position.balanced] run scoreboard players operation min temp = @s wave.row1.zombie_count

execute if entity @s[tag=position.balanced] if score @s wave.row1.zombie_count < min temp run scoreboard players operation min temp = @s wave.row1.zombie_count
execute if entity @s[tag=position.balanced] if score @s wave.row1.zombie_count < min temp run scoreboard players set lane temp 1

execute if entity @s[tag=position.balanced] if score @s wave.row2.zombie_count < min temp run scoreboard players operation min temp = @s wave.row2.zombie_count
execute if entity @s[tag=position.balanced] if score @s wave.row2.zombie_count < min temp run scoreboard players set lane temp 2

execute if entity @s[tag=position.balanced] if score @s wave.row3.zombie_count < min temp run scoreboard players operation min temp = @s wave.row3.zombie_count
execute if entity @s[tag=position.balanced] if score @s wave.row3.zombie_count < min temp run scoreboard players set lane temp 3

execute if entity @s[tag=position.balanced] if score @s wave.row4.zombie_count < min temp run scoreboard players operation min temp = @s wave.row4.zombie_count
execute if entity @s[tag=position.balanced] if score @s wave.row4.zombie_count < min temp run scoreboard players set lane temp 4

execute if entity @s[tag=position.balanced] if score @s wave.row5.zombie_count < min temp run scoreboard players operation min temp = @s wave.row5.zombie_count
execute if entity @s[tag=position.balanced] if score @s wave.row5.zombie_count < min temp run scoreboard players set lane temp 5

execute if entity @s[tag=position.balanced] if score @s wave.row6.zombie_count < min temp run scoreboard players operation min temp = @s wave.row6.zombie_count
execute if entity @s[tag=position.balanced] if score @s wave.row6.zombie_count < min temp run scoreboard players set lane temp 6

#get slight displacement for zombies
execute store result storage pvz:temp wave.spawn.randx float 0.01 run random value -50..50
execute store result storage pvz:temp wave.spawn.randz float 0.01 run random value -50..50
execute store result storage pvz:temp wave.spawn.frame int 1 run random value 1..40

$data modify storage pvz:temp wave.spawn.zombie set value "$(zombie)"

#execute spawning
execute as @n[tag=this.plot] at @s if score lane temp matches 1 positioned ~-0.5 ~0.5 ~0.5 run function pvz:zombie/summon_id with storage pvz:temp wave.spawn
execute as @n[tag=this.plot] at @s if score lane temp matches 1 run scoreboard players add @s wave.row1.zombie_count 1

execute as @n[tag=this.plot] at @s if score lane temp matches 2 positioned ~-0.5 ~0.5 ~2.5 run function pvz:zombie/summon_id with storage pvz:temp wave.spawn
execute as @n[tag=this.plot] at @s if score lane temp matches 2 run scoreboard players add @s wave.row2.zombie_count 1

execute as @n[tag=this.plot] at @s if score lane temp matches 3 positioned ~-0.5 ~0.5 ~4.5 run function pvz:zombie/summon_id with storage pvz:temp wave.spawn
execute as @n[tag=this.plot] at @s if score lane temp matches 3 run scoreboard players add @s wave.row3.zombie_count 1

execute as @n[tag=this.plot] at @s if score lane temp matches 4 positioned ~-0.5 ~0.5 ~6.5 run function pvz:zombie/summon_id with storage pvz:temp wave.spawn
execute as @n[tag=this.plot] at @s if score lane temp matches 4 run scoreboard players add @s wave.row4.zombie_count 1

execute as @n[tag=this.plot] at @s if score lane temp matches 5 positioned ~-0.5 ~0.5 ~8.5 run function pvz:zombie/summon_id with storage pvz:temp wave.spawn
execute as @n[tag=this.plot] at @s if score lane temp matches 5 run scoreboard players add @s wave.row5.zombie_count 1

execute as @n[tag=this.plot] at @s if score lane temp matches 6 positioned ~-0.5 ~0.5 ~10.5 run function pvz:zombie/summon_id with storage pvz:temp wave.spawn
execute as @n[tag=this.plot] at @s if score lane temp matches 6 run scoreboard players add @s wave.row6.zombie_count 1

tag @s remove position.balanced
tag @s remove position.random