fill ~ ~-2 ~ ~23 ~-2 ~11 redstone_block

fill ~ ~-1 ~ ~23 ~-1 ~11 coarse_dirt

fill ~ ~ ~ ~23 ~ ~11 gold_block

execute positioned ~ ~ ~ run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~4 ~ ~ run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~8 ~ ~ run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~12 ~ ~ run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~16 ~ ~ run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~20 ~ ~ run fill ~ ~ ~ ~1 ~ ~1 diamond_block


execute positioned ~ ~ ~4 run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~4 ~ ~4 run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~8 ~ ~4 run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~12 ~ ~4 run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~16 ~ ~4 run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~20 ~ ~4 run fill ~ ~ ~ ~1 ~ ~1 diamond_block

execute positioned ~ ~ ~8 run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~4 ~ ~8 run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~8 ~ ~8 run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~12 ~ ~8 run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~16 ~ ~8 run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~20 ~ ~8 run fill ~ ~ ~ ~1 ~ ~1 diamond_block



execute positioned ~2 ~ ~2 run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~6 ~ ~2 run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~10 ~ ~2 run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~14 ~ ~2 run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~18 ~ ~2 run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~22 ~ ~2 run fill ~ ~ ~ ~1 ~ ~1 diamond_block

execute positioned ~2 ~ ~6 run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~6 ~ ~6 run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~10 ~ ~6 run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~14 ~ ~6 run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~18 ~ ~6 run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~22 ~ ~6 run fill ~ ~ ~ ~1 ~ ~1 diamond_block

execute positioned ~2 ~ ~10 run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~6 ~ ~10 run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~10 ~ ~10 run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~14 ~ ~10 run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~18 ~ ~10 run fill ~ ~ ~ ~1 ~ ~1 diamond_block
execute positioned ~22 ~ ~10 run fill ~ ~ ~ ~1 ~ ~1 diamond_block


execute if score @p[tag=this] wave.lanes matches 1 run fill ~ ~-2 ~4 ~23 ~-2 ~5 emerald_block
execute if score @p[tag=this] wave.lanes matches 1 run fill ~ ~ ~4 ~23 ~ ~5 grass_block replace diamond_block
execute if score @p[tag=this] wave.lanes matches 1 run fill ~ ~ ~4 ~23 ~ ~5 azalea replace gold_block

execute if score @p[tag=this] wave.lanes matches 3 run fill ~ ~-2 ~2 ~23 ~-2 ~7 emerald_block
execute if score @p[tag=this] wave.lanes matches 3 run fill ~ ~ ~2 ~23 ~ ~7 grass_block replace diamond_block
execute if score @p[tag=this] wave.lanes matches 3 run fill ~ ~ ~2 ~23 ~ ~7 azalea replace gold_block

execute if score @p[tag=this] wave.lanes matches 6 run fill ~ ~-2 ~ ~23 ~-2 ~11 emerald_block
execute if score @p[tag=this] wave.lanes matches 6 run fill ~ ~ ~ ~23 ~ ~11 grass_block replace diamond_block
execute if score @p[tag=this] wave.lanes matches 6 run fill ~ ~ ~ ~23 ~ ~11 azalea replace gold_block


fill ~ ~ ~ ~23 ~ ~11 rooted_dirt replace diamond_block
fill ~ ~ ~ ~23 ~ ~11 coarse_dirt replace gold_block
