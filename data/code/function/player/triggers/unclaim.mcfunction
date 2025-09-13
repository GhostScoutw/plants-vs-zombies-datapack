scoreboard players reset @s unclaim

execute as @e[tag=plot.root] if score @s generic.id = @p[tag=this.player] generic.id run tag @s add unclaim

execute unless entity @n[tag=plot.root,tag=unclaim] run return run tellraw @p[tag=this.player] {text:"You do not own a plot to unclaim!",color:red}


tellraw @p[tag=this.player] {text:"You have unclaimed a plot!",color:yellow}
execute as @n[tag=plot.root,tag=unclaim] at @s run function code:plot/unclaim

execute as @n[tag=plot.root,tag=unclaim] run tag @s remove unclaim