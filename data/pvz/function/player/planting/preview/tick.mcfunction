scoreboard players remove @s[scores={preview.pulse=1..}] preview.pulse 1

execute if score @s preview.pulse matches 30 run data merge entity @s {interpolation_duration:20,transformation:{scale:[20.0f,20.0f,20.0f],translation:[-0.38f,-2.12f,0.0f]}}
execute if score @s preview.pulse matches 10 run data merge entity @s {interpolation_duration:20,transformation:{scale:[16.0f,16.0f,16.0f],translation:[-0.3f,-1.7f,0.0f]}}
execute if score @s preview.pulse matches 0 run scoreboard players set @s preview.pulse 40


tag @s add this.preview
execute as @a if score @s generic.id = @n[tag=this.preview] generic.id run tag @s add this.player
execute as @e[tag=plot.root] if score @s generic.id = @p[tag=this.player] generic.id run tag @s add this.plot

execute unless entity @n[tag=this.plot] unless data entity @s {text:{text:"▣",color:red}} run data modify entity @s text set value {text:"▣",color:red}

execute at @n[tag=this.plot] if entity @s[dx=23,dz=11,dy=5] unless data entity @s {text:{text:"▣",color:green}} run data modify entity @s text set value {text:"▣",color:green}
execute at @n[tag=this.plot] unless entity @s[dx=23,dz=11,dy=5] unless data entity @s {text:{text:"▣",color:red}} run data modify entity @s text set value {text:"▣",color:red}
execute at @s unless block ~ ~-2.5 ~ emerald_block unless data entity @s {text:{text:"▣",color:red}} run data modify entity @s text set value {text:"▣",color:red}

execute unless items entity @p[tag=this.player] weapon.mainhand stick run function pvz:player/planting/preview/kill

tag @n[tag=this.plot] remove this.plot
tag @p[tag=this.player] remove this.player
tag @s remove this.preview