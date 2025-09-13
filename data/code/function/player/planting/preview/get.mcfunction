execute positioned ^ ^ ^0.2 if block ~ ~ ~ air if entity @p[tag=this.player,distance=..12] run return run function code:player/planting/preview/get

#execute align y unless block ~ ~-3 ~ emerald_block run return fail

execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~-1 ~ air run return fail


execute as @e[tag=planting.preview] if score @s generic.id = @p[tag=this.player] generic.id run tag @s add this.preview

execute unless entity @n[tag=planting.preview,tag=this.preview] run function code:player/planting/preview/summon


execute positioned ~13510798882111488 ~ ~13510798882111488 positioned ~-13510798882111488 ~ ~-13510798882111488 align y run tp @n[tag=this.preview] ~ ~ ~ 0 -90


tag @n[tag=this.preview] remove this.preview