execute align xyz positioned ~0.5 ~ ~0.5 run function marcono1234:light_level_spawning/_check_create_marker
scoreboard players remove #forwardMov light_level_spwn 1
execute if score #forwardMov light_level_spwn matches 1.. positioned ^ ^ ^0.7 run function marcono1234:light_level_spawning/_create_markers_forward
