
execute if items entity @s container.* *[custom_data={clear:1b}] run return run clear @s *[custom_data={clear:1b}]
execute if items entity @s player.cursor *[custom_data={clear:1b}] run return run clear @s *[custom_data={clear:1b}]

execute store result score bag_count temp run clear @s *[custom_data~{bag:1b}] 0

execute if score bag_count temp matches 9.. run tellraw @s {"text":"You can only carry 8 seedbags at a time!",color:red}
execute if score bag_count temp matches 9.. run return run clear @s *[custom_data~{clear:1b}]

execute if items entity @s player.cursor *[custom_data~{clear:1b,id:1}] \
        unless items entity @s container.* *[custom_data~{bag:1b,id:1}] run function pvz:plant/peashooter/get_bag
execute if items entity @s player.cursor *[custom_data~{clear:1b,id:2}] \
        unless items entity @s container.* *[custom_data~{bag:1b,id:2}] run function pvz:plant/sunflower/get_bag
execute if items entity @s player.cursor *[custom_data~{clear:1b,id:3}] \
        unless items entity @s container.* *[custom_data~{bag:1b,id:3}] run function pvz:plant/cherry_bomb/get_bag
execute if items entity @s player.cursor *[custom_data~{clear:1b,id:4}] \
        unless items entity @s container.* *[custom_data~{bag:1b,id:4}] run function pvz:plant/wall_nut/get_bag
execute if items entity @s player.cursor *[custom_data~{clear:1b,id:5}] \
        unless items entity @s container.* *[custom_data~{bag:1b,id:5}] run function pvz:plant/potato_mine/get_bag
execute if items entity @s player.cursor *[custom_data~{clear:1b,id:6}] \
        unless items entity @s container.* *[custom_data~{bag:1b,id:6}] run function pvz:plant/snow_pea/get_bag
execute if items entity @s player.cursor *[custom_data~{clear:1b,id:7}] \
        unless items entity @s container.* *[custom_data~{bag:1b,id:7}] run function pvz:plant/chomper/get_bag
execute if items entity @s player.cursor *[custom_data~{clear:1b,id:8}] \
        unless items entity @s container.* *[custom_data~{bag:1b,id:8}] run function pvz:plant/repeater/get_bag

clear @s *[custom_data~{clear:1b}]