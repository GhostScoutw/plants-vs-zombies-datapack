
scoreboard players add last generic.id 1

scoreboard players operation @s generic.id = last generic.id

tellraw @a [{selector:"@s"},{text:" Has joined for the first time!",color:aqua}]