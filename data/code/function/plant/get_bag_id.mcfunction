
$scoreboard players set get_id temp $(id)


execute if score get_id temp matches 1 run return run function code:plant/peashooter/get_bag

execute if score get_id temp matches 2 run return run function code:plant/sunflower/get_bag

execute if score get_id temp matches 3 run return run function code:plant/cherry_bomb/get_bag

execute if score get_id temp matches 4 run return run function code:plant/wall_nut/get_bag

execute if score get_id temp matches 5 run return run function code:plant/potato_mine/get_bag

execute if score get_id temp matches 6 run return run function code:plant/snow_pea/get_bag

execute if score get_id temp matches 7 run return run function code:plant/chomper/get_bag

execute if score get_id temp matches 8 run return run function code:plant/repeater/get_bag

tellraw @s {text:"There is no plant with this id",color:red}