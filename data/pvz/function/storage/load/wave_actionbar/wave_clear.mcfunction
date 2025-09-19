execute unless score @s wave.progress <= @s wave.progress.max run return fail
execute store result storage pvz:temp player.wave_index int 1 run scoreboard players get @s wave.progress

function pvz:storage/load/wave_actionbar/wave_clear_apply with storage pvz:temp player

execute store result storage pvz:temp player.wave_index int 1 run scoreboard players add @s wave.progress 1