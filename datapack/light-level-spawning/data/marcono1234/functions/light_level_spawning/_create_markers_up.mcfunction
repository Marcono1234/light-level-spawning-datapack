scoreboard players set #forwardMov light_level_spwn 9
function marcono1234:light_level_spawning/_create_markers_forward
scoreboard players remove #upMov light_level_spwn 1
execute if score #upMov light_level_spwn matches 1.. positioned ^ ^0.7 ^ run function marcono1234:light_level_spawning/_create_markers_up
