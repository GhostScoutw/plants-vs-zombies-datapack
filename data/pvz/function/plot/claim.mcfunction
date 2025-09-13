scoreboard players operation @s generic.id = @p[tag=this.player] generic.id

tag @s add this.claim

execute at @s run fill ~ ~ ~ ~23 ~ ~11 grass_block replace rooted_dirt

execute at @s run fill ~ ~ ~ ~23 ~ ~11 azalea replace coarse_dirt

execute as @e[tag=plot.nameplate] if score @s plot.id = @n[tag=this.claim] plot.id run data merge entity @s {text:[{selector:"@p[tag=this.player]",color:aqua,bold:true},{text:"'s Lawn",color:green}]}



tag @s remove this.claim