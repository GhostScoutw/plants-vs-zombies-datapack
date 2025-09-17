
$execute positioned ~$(randx) ~ ~$(randz) run function pvz:zombie/$(zombie)/summon

$execute as @n[tag=this.frame] if entity @s[tag=zombie.normal] run function animated_java:zombie/animations/walk/set_frame {frame:$(frame)}
$execute as @n[tag=this.frame] if entity @s[tag=zombie.cone] run function animated_java:zombie/animations/walk/set_frame {frame:$(frame)}
$execute as @n[tag=this.frame] if entity @s[tag=zombie.bucket] run function animated_java:zombie/animations/walk/set_frame {frame:$(frame)}

$execute as @n[tag=this.frame] run function animated_java:$(zombie)/animations/walk/set_frame {frame:$(frame)}

tag @e[tag=this.frame] remove this.frame