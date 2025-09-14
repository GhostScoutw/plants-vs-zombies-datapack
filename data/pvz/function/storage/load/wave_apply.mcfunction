
$tellraw @a "id: $(id)"
$tellraw @a "wave: $(wave)"

$data modify storage pvz:main player_storage.player$(id).wave set from storage waves list.wave_$(wave)