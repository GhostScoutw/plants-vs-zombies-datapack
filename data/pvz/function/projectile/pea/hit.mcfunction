
scoreboard players remove @s generic.health 20

playsound minecraft:block.azalea.place master @a ~ ~ ~ 1 1
particle block{block_state:"slime_block"} ~ ~1 ~ 0.2 0.2 0.2 0 15

execute as @n[tag=this.projectile] run kill @s