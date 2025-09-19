
$data modify storage pvz:temp actionbar set from storage pvz:main player_storage.player$(id).actionbar[$(wave_index)]

$execute if data storage pvz:temp {actionbar:{text:"🪦"}} run data modify storage pvz:main player_storage.player$(id).actionbar[$(wave_index)].color set value "green"
$execute if data storage pvz:temp {actionbar:{text:"🚩"}} run data modify storage pvz:main player_storage.player$(id).actionbar[$(wave_index)].color set value "dark_green"


$execute store result score @s wave.is_flag run data get storage pvz:main player_storage.player$(id).wave.waves[1].flag

execute if score @s wave.is_flag matches 1 run function pvz:wave/flag_approaching
$execute store result score @s wave.is_flag run data get storage pvz:main player_storage.player$(id).wave.waves[0].flag
$execute if score @s wave.is_flag matches 1 run function pvz:wave/flag_here {id:$(id)}