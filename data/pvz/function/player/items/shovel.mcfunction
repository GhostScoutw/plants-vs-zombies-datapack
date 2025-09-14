
execute if data entity @n[tag=this.preview] {text:{text:"▣",color:red}} run return run tellraw @s {text:"You must be looking at a valid planting spot!",color:red}

execute at @n[tag=this.preview] unless entity @n[tag=plant,distance=..0.5] run return run tellraw @s {text:"You must be looking at a plant to remove it!",color:red}

item modify entity @s weapon.mainhand {\
  "function": "minecraft:set_damage",\
  "damage": 0,add:false\
}

execute at @n[tag=this.preview] as @n[tag=plant,distance=..0.5] run function pvz:plant/die

playsound block.rooted_dirt.break master @a ~ ~ ~ 1 1