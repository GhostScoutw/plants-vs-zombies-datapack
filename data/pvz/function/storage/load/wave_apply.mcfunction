
$tellraw @a "id: $(id)"
$tellraw @a "wave: $(wave)"
tag @s add wave_active
$data modify storage pvz:main player_storage.player$(id).wave set from storage waves list.wave_$(wave)

$execute store result score @s wave.sun_drop store result score @s wave.sun_drop.max run data get storage pvz:main player_storage.player$(id).wave.sun_gen
$execute store result score @s wave.time_last_wave run data get storage pvz:main player_storage.player$(id).wave.waves[0].delay


