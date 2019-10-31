scoreboard players set #leftMov light_level_spwn 9
# When not moving along the axis, moving in squares with a diagonal length of 1
# So the formula is a² + a² = 1² -> a = sqrt(1² / 2) which is roughly 0.7
# ^(0.7 * -4) ^(0.7 * -2) ^-1
# This means it is possible for a block to be scanned twice when moving along an axis, however that should be acceptable
# Show spaces 1 block behind player in case they have high FOV
execute positioned ^-2.8 ^-0.5 ^-1 run function marcono1234:light_level_spawning/_create_markers_left
