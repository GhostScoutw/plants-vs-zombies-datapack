
$execute unless score @s player.sun matches $(sun_cost).. run return run tellraw @s [{text:"Not enough sun to plant this! ",color:red},{score:{name:"@s",objective:"player.sun"},color:dark_red},{text:"/",color:dark_red},{text:"$(sun_cost)",color:dark_red}]

execute if data entity @n[tag=this.preview] {text:{text:"▣",color:red}} run return run tellraw @s {text:"You must be looking at a valid planting spot!",color:red}

execute at @n[tag=this.preview] if entity @n[tag=plant,distance=..0.5] run return run tellraw @s {text:"You cannot plant this here!",color:red}

$scoreboard players remove @s player.sun $(sun_cost)

item modify entity @s weapon.mainhand {\
  "function": "minecraft:set_damage",\
  "damage": 0,add:false\
}

$execute at @n[tag=this.preview] run function pvz:plant/$(plant)/summon

playsound minecraft:block.grass.place master @a ~ ~ ~ 1 1