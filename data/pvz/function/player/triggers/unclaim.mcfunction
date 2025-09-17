scoreboard players reset @s unclaim


execute unless entity @n[tag=this.plot] run return run tellraw @p[tag=this.player] {text:"You do not own a plot to unclaim!",color:red}
execute if entity @p[tag=this.player,tag=wave_active] run return run tellraw @p[tag=this.player] {text:"You cannot unclaim while you have an active wave!",color:red}


tellraw @p[tag=this.player] {text:"You have unclaimed a plot!",color:yellow}
execute as @n[tag=this.plot] at @s run function pvz:plot/unclaim

