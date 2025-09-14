
execute on target unless entity @s[tag=this.player] run tellraw @s {text:"This does not belong to you!",color:red}
execute on target unless entity @s[tag=this.player] as @n[tag=this.extra] on passengers as @s[type=interaction] run return run data remove entity @s interaction


execute on target run function pvz:extra/sun/collect
data remove entity @s interaction