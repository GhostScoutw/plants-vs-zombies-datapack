scoreboard players reset @s generic.id

tag @s add this.unclaim


execute at @s run fill ~ ~ ~ ~23 ~ ~11 rooted_dirt replace grass_block
execute at @s run fill ~ ~ ~ ~23 ~ ~11 coarse_dirt replace azalea

execute as @e[tag=plot.nameplate] if score @s plot.id = @n[tag=this.unclaim] plot.id run data merge entity @s {text:[{text:"UNNOCUPIED",color:dark_red,bold:true}]}

tag @s remove this.unclaim
