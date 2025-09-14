
summon item_display ~ ~ ~ {Tags:["projectile","pea","init"],\
    item:{\
        id:"snowball",\
        components:{\
        item_model:"minecraft:lime_wool"\
        }\
    },transformation:{\
        left_rotation:[0.0f,0.0f,0.0f,1.0f],\
        right_rotation:[0.0f,0.0f,0.0f,1.0f],\
        scale:[0.3f,0.3f,0.3f],\
        translation:[0.0f,0.0f,0.0f],\
        \
    },teleport_duration:1\
}

rotate @n[tag=projectile,tag=init] ~ ~

scoreboard players operation @n[tag=projectile,tag=init] generic.id = @s generic.id
scoreboard players set @n[tag=projectile,tag=init] generic.lifetime 160

tag @n[tag=projectile,tag=init] remove init