
gamerule doMobSpawning false
gamerule mobGriefing false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule locatorBar false
gamerule keepInventory true

tellraw @a { "color": "#00FF00", "text": "The pvz is Load"}

function pvz:wave/load_list
scoreboard objectives add generic.id dummy
scoreboard objectives add generic.health dummy

scoreboard objectives add generic.fire_rate dummy
scoreboard objectives add generic.fire_delay dummy
scoreboard objectives add generic.delay dummy
scoreboard objectives add generic.lifetime dummy

scoreboard objectives add player.sun dummy
scoreboard objectives add player.progress dummy
scoreboard objectives add player.current_level dummy
scoreboard objectives add player.endchest.id dummy

scoreboard objectives add plot.id dummy

scoreboard objectives add item.adv_cooldown dummy

scoreboard objectives add wave.zombie_count dummy
scoreboard objectives add wave.row1.zombie_count dummy
scoreboard objectives add wave.row2.zombie_count dummy
scoreboard objectives add wave.row3.zombie_count dummy
scoreboard objectives add wave.row4.zombie_count dummy
scoreboard objectives add wave.row5.zombie_count dummy
scoreboard objectives add wave.row6.zombie_count dummy

scoreboard objectives add wave.time_last_wave dummy
scoreboard objectives add wave.index dummy
scoreboard objectives add wave.progress dummy
scoreboard objectives add wave.progress.max dummy

scoreboard objectives add wave.is_flag dummy
scoreboard objectives add wave.lanes dummy

scoreboard objectives add wave.sun_drop dummy
scoreboard objectives add wave.sun_drop.max dummy


scoreboard objectives add preview.pulse dummy
scoreboard objectives add temp dummy

scoreboard objectives add claim trigger
scoreboard objectives add unclaim trigger
