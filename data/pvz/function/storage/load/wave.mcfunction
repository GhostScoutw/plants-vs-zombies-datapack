
execute store result storage pvz:temp player.id int 1 run scoreboard players get @s generic.id

$data modify storage pvz:temp player.wave set value "$(wave)"

function pvz:storage/load/wave_apply with storage pvz:temp player