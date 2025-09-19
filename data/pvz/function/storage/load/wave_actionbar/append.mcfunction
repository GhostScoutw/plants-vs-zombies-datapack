execute if score wave_index temp > @s wave.progress.max run return fail

$say $(wave_index)

$execute store result storage pvz:temp wave.flag byte 1 run data get storage pvz:main player_storage.player$(id).wave.waves[$(wave_index)].flag

$execute if data storage pvz:temp {wave:{flag:0b}} run data modify storage pvz:main player_storage.player$(id).actionbar append value {text:"🪦",color:"light_purple",bold:false}
$execute if data storage pvz:temp {wave:{flag:1b}} run data modify storage pvz:main player_storage.player$(id).actionbar append value {text:"🚩",color:"red",bold:false}

execute store result storage pvz:temp player.wave_index int 1 run scoreboard players add wave_index temp 1

function pvz:storage/load/wave_actionbar/append with storage pvz:temp player