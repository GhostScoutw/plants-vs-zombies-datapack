summon text_display ~ ~ ~ {Tags:["planting.preview","this.preview","init"],text:{text:"▣",color:green},background:0,transformation:{\
    left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[-0.3f,-1.7f,0.0f],scale:[16.0f,16.0f,16.0f],\
},teleport_duration:1}



scoreboard players set @n[tag=planting.preview,tag=init] preview.pulse 20

scoreboard players operation @n[tag=planting.preview,tag=init] generic.id = @p[tag=this.player] generic.id

execute as @n[tag=planting.preview,tag=init] run tag @s remove init