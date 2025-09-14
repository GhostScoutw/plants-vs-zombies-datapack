

scoreboard players operation @s player.sun += @n[tag=this.extra] player.sun

playsound minecraft:entity.puffer_fish.blow_up hostile @a ~ ~ ~ 2 2
execute as @n[tag=this.extra] at @s run particle dust{color:[255,255,255],scale:0.5} ~ ~ ~ 0.3 0.3 0.3 0 20


execute as @n[tag=this.extra] on passengers run kill @s
execute as @n[tag=this.extra] run kill @s