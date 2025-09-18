tellraw @s {text:"Round ended"}
tag @s remove wave_active


execute unless score @s player.progress matches -2147483648..2147483647 run scoreboard players set @s player.progress 0
execute if score @s player.current_level > @s player.progress run scoreboard players operation @s player.progress = @s player.current_level
