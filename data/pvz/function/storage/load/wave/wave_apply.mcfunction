
tag @s add wave_active
tag @s add first_wave

$data modify storage pvz:main player_storage.player$(id).wave set from storage waves list.wave_$(wave)

$execute store result score @s player.current_level run data get storage pvz:main player_storage.player$(id).wave.level
$execute store result score @s player.sun run data get storage pvz:main player_storage.player$(id).wave.starting_sun
$execute store result score @s wave.lanes run data get storage pvz:main player_storage.player$(id).wave.lanes
tag @s add this
execute as @e[tag=plot.root] if score @s generic.id = @p[tag=this] generic.id at @s run function pvz:wave/get_lanes
tag @s remove this
$execute store result score @s wave.sun_drop store result score @s wave.sun_drop.max run data get storage pvz:main player_storage.player$(id).wave.sun_gen
$execute store result score @s wave.time_last_wave run data get storage pvz:main player_storage.player$(id).wave.waves[0].delay


