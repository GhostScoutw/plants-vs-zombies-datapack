
scoreboard players operation @s wave.sun_drop = @s wave.sun_drop.max

execute store result storage pvz:temp sun.randx float 0.1 run random value 0..230
execute store result storage pvz:temp sun.randz float 0.1 run random value 0..110

execute at @n[tag=this.plot] positioned ~ ~7 ~ run function pvz:wave/drop_sun_apply with storage pvz:temp sun