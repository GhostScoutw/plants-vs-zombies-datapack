
$execute if items entity @s container.$(container) *[custom_data~{cooldown:1b}] run item modify entity @s container.$(container) {\
  "function": "minecraft:set_damage",\
  "damage": 0.001,\
  "add": true\
}

execute store result storage pvz:temp container int 1 run scoreboard players add container temp 1


execute if score container temp matches 35 run return fail

function pvz:player/items/cooldown/set_damage_apply with storage pvz:temp