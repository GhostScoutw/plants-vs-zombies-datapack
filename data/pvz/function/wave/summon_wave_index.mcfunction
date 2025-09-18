tag @s remove first_wave

$execute if data storage pvz:main player_storage.player$(id).wave.waves[0].zombies[] run scoreboard players add @s wave.zombie_count 1

$data modify storage pvz:main player_storage.player$(id).wave.waves[0].zombies[0].id set value $(id)

$data modify storage pvz:temp wave.position set from storage pvz:main player_storage.player$(id).wave.waves[0].position

$function pvz:wave/summon_zombie with storage pvz:main player_storage.player$(id).wave.waves[0].zombies[0]
$data remove storage pvz:main player_storage.player$(id).wave.waves[0].zombies[0]

$execute if data storage pvz:main player_storage.player$(id).wave.waves[0].zombies[] run return run function pvz:wave/summon_wave_index {id:$(id)}


$execute store result score @s wave.time_last_wave run data get storage pvz:main player_storage.player$(id).wave.waves[0].delay

$data remove storage pvz:main player_storage.player$(id).wave.waves[0]
