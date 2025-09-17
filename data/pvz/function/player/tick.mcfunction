tag @s add this.player
execute as @e[tag=plot.root] if score @s generic.id = @p[tag=this.player] generic.id run tag @s add this.plot
execute as @e[tag=zombie] if score @s generic.id = @p[tag=this.player] generic.id run tag @s add these.zombies

execute unless score @s generic.id matches -2147483648..2147483647 run function pvz:player/first_join

effect give @s saturation infinite 1 true

function pvz:player/triggers/check

execute if items entity @s weapon.mainhand stick at @s anchored eyes run function pvz:player/planting/preview/get

execute if items entity @s container.* *[custom_data~{cooldown:1b}] run function pvz:player/items/cooldown/set_damage

scoreboard players remove @s[scores={item.adv_cooldown=1..}] item.adv_cooldown 1

title @s actionbar [{text:"Sun: ",color:yellow},{score:{name:"@s",objective:"player.sun"}}]

execute unless entity @n[tag=this.plot] run tag @s remove wave_active

execute if entity @s[tag=wave_active] run function pvz:wave/tick

tag @e[tag=these.zombies] remove these.zombies
tag @n[tag=this.plot] remove this.plot
tag @s remove this.player