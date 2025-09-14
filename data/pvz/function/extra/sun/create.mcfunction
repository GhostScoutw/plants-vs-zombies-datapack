
summon item_display ~ ~ ~ {Tags:["extra","sun","init"],\
    Passengers:[{id:"minecraft:interaction",width:0.5f,height:-0.25f,response:1b},\
                {id:"minecraft:interaction",width:0.5f,height:0.25f,response:1b},\
                {id:"minecraft:text_display",text:{text:"⎈",color:yellow,bold:false,shadow_color:1694463744},\
                    transformation:\
                        {left_rotation:[0.0f,0.0f,0.0f,1.0f],\
                        right_rotation:[0f,0f,0f,1f],\
                        scale:[10.0f,10.0f,10.0f],\
                        translation:[-0.2f,-1.3f,0.0f]\
                    },billboard:"center",background:0}],\
    transformation:{\
        left_rotation:[0f,0f,0f,1f],\
        right_rotation:[0f,0f,0f,1f],\
        translation:[0f,0f,0f],\
        scale:[0.5f,0.5f,0.5f]},\
    item:{id:"minecraft:yellow_glazed_terracotta",count:1},teleport_duration:1\
}


scoreboard players operation @n[tag=extra,tag=init] generic.id = @s generic.id


scoreboard players set @n[tag=extra,tag=init] player.sun 25

scoreboard players set @n[tag=extra,tag=init] generic.lifetime 400

tag @n[tag=extra,tag=init] remove init