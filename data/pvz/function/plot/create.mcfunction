fill ~ ~-2 ~ ~23 ~-2 ~11 emerald_block

fill ~ ~-1 ~ ~23 ~-1 ~11 coarse_dirt

fill ~ ~ ~ ~23 ~ ~11 coarse_dirt

execute positioned ~ ~ ~ run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~4 ~ ~ run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~8 ~ ~ run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~12 ~ ~ run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~16 ~ ~ run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~20 ~ ~ run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt


execute positioned ~ ~ ~4 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~4 ~ ~4 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~8 ~ ~4 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~12 ~ ~4 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~16 ~ ~4 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~20 ~ ~4 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt

execute positioned ~ ~ ~8 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~4 ~ ~8 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~8 ~ ~8 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~12 ~ ~8 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~16 ~ ~8 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~20 ~ ~8 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt



execute positioned ~2 ~ ~2 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~6 ~ ~2 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~10 ~ ~2 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~14 ~ ~2 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~18 ~ ~2 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~22 ~ ~2 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt

execute positioned ~2 ~ ~6 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~6 ~ ~6 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~10 ~ ~6 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~14 ~ ~6 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~18 ~ ~6 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~22 ~ ~6 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt

execute positioned ~2 ~ ~10 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~6 ~ ~10 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~10 ~ ~10 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~14 ~ ~10 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~18 ~ ~10 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt
execute positioned ~22 ~ ~10 run fill ~ ~ ~ ~1 ~ ~1 rooted_dirt

execute align xyz run summon marker ~0.5 ~0.5 ~0.5 {Tags:["plot.root","init","plot"]}


execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon text_display ~12 ~10 ~6 {Tags:["plot.nameplate","init","plot"],\
    transformation:{\
        left_rotation:[0.0f,0.0f,0.0f,1.0f],\
        right_rotation:[0.0f,0.0f,0.0f,1.0f],\
        translation:[0.0f,0.0f,0.0f],\
        scale:[4.0f,4.0f,4.0f]\
    },text:[\
        {text:"UNOCCUPIED",color:dark_red,bold:true},\
    ],billboard:"vertical"}



scoreboard players add last plot.id 1

scoreboard players operation @n[tag=plot.root,tag=init] plot.id = last plot.id

scoreboard players operation @e[tag=plot,tag=init] plot.id = @n[tag=plot.root,tag=init] plot.id

tag @e[tag=plot,tag=init] remove init