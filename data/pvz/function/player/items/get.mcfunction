advancement revoke @s only pvz:use_item

execute if score @s item.adv_cooldown matches 1.. run return fail
scoreboard players set @s item.adv_cooldown 5

execute unless data entity @s {SelectedItem:{components:{"minecraft:damage":0}}} run return run tellraw @s {text:"This item is on cooldown!",color:red}
tag @s add this.player
execute as @e[tag=planting.preview] if score @s generic.id = @p[tag=this.player] generic.id run tag @s add this.preview

execute if items entity @s weapon.mainhand *[custom_data~{bags:1b}] run function pvz:player/items/seedbags with entity @s SelectedItem.components."minecraft:custom_data"

execute if items entity @s weapon.mainhand *[custom_data~{shovel:1b}] run function pvz:player/items/shovel


tag @n[tag=this.preview] remove this.preview
tag @s remove this.player