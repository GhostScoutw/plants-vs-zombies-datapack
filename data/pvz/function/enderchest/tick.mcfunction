

execute unless entity @s[tag=wave_active] run function pvz:enderchest/plantselect/model

execute if items entity @s container.* *[custom_data~{clear:1b}] run function pvz:enderchest/select
execute if items entity @s player.cursor *[custom_data~{clear:1b}] run function pvz:enderchest/select