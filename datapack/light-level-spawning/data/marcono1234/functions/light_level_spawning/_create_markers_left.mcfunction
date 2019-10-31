scoreboard players set #upMov light_level_spwn 5
function marcono1234:light_level_spawning/_create_markers_up
scoreboard players remove #leftMov light_level_spwn 1
execute if score #leftMov light_level_spwn matches 1.. positioned ^0.7 ^ ^ run function marcono1234:light_level_spawning/_create_markers_left
