scoreboard players reset @s claim

execute as @e[tag=plot.root] if score @s generic.id = @p[tag=this.player] generic.id run return run tellraw @p[tag=this.player] {text:"You already own a plot!",color:yellow}

execute as @e[tag=plot.root] at @s if entity @p[tag=this.player,dx=23,dz=11,dy=5] if score @s generic.id matches -2147483648..2147483647 run return run tellraw @p[tag=this.player] {text:"this is already claimed",color:red}

execute as @e[tag=plot.root] at @s if entity @p[tag=this.player,dx=23,dz=11,dy=5] unless score @s generic.id matches -2147483648..2147483647 run tag @s add in_range

execute unless entity @n[tag=plot.root,tag=in_range] run return run tellraw @p[tag=this.player] {text:"You must be standing on a lawn to claim it!",color:red}


tellraw @p[tag=this.player] {text:"You have claimed this plot!",color:green}

execute as @n[tag=plot.root,tag=in_range] run function code:plot/claim


tag @n[tag=plot.root,tag=in_range] remove in_range


