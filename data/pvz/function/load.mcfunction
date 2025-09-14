
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

scoreboard objectives add plot.id dummy

scoreboard objectives add item.adv_cooldown dummy


scoreboard objectives add preview.pulse dummy
scoreboard objectives add temp dummy

scoreboard objectives add claim trigger
scoreboard objectives add unclaim trigger
