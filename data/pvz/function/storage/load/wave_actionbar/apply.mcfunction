data remove storage pvz:main player_storage.player1.actionbar
$execute store result score @s wave.progress.max run data get storage pvz:main player_storage.player$(id).wave.waves
scoreboard players remove @s wave.progress.max 1

execute if score @s wave.progress.max matches ..-1 run return fail

scoreboard players set @s wave.progress 0
execute store result storage pvz:temp player.wave_index int 1 run scoreboard players set wave_index temp 0

function pvz:storage/load/wave_actionbar/append with storage pvz:temp player