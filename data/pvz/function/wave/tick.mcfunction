##coming from player tick
execute store result storage pvz:temp wave.id int 1 run scoreboard players get @s generic.id

scoreboard players remove @s[scores={wave.time_last_wave=1..}] wave.time_last_wave 1
scoreboard players remove @s[scores={wave.sun_drop=1..}] wave.sun_drop 1

execute if score @s wave.sun_drop matches ..0 run function pvz:wave/drop_sun


execute store result score @s wave.zombie_count if entity @e[tag=these.zombies]

execute if score @s[tag=!first_wave] wave.zombie_count matches 0 run scoreboard players set @s wave.time_last_wave 0


execute if score @s wave.time_last_wave matches ..0 run function pvz:wave/summon_wave_index with storage pvz:temp wave

execute store result storage pvz:temp player.id int 1 run scoreboard players get @s generic.id

function pvz:storage/load/wave_actionbar/tell with storage pvz:temp player

execute if score @s wave.zombie_count matches 0 if score @s wave.time_last_wave matches ..0 run function pvz:wave/round_end