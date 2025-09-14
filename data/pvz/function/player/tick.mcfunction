tag @s add this.player
execute unless score @s generic.id matches -2147483648..2147483647 run function pvz:player/first_join

effect give @s saturation infinite 1 true

function pvz:player/triggers/check

execute as @e[tag=plot.root] if score @s generic.id = @p[tag=this.player] generic.id run tag @s add this.plot

execute if items entity @s weapon.mainhand stick at @s anchored eyes run function pvz:player/planting/preview/get

execute if items entity @s container.* *[custom_data~{cooldown:1b}] run function pvz:player/items/cooldown/set_damage

scoreboard players remove @s[scores={item.adv_cooldown=1..}] item.adv_cooldown 1

title @s actionbar [{text:"Sun: ",color:yellow},{score:{name:"@s",objective:"player.sun"}}]

tag @n[tag=this.plot] remove this.plot
tag @s remove this.player