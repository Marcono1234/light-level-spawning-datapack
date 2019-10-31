# Note: Should actually check whether block below has solid top surface, but this cannot easily be checked, 
# so for simplicity just verify that the block below is not a spawning block
execute if block ~ ~ ~ #marcono1234:light_level_spawning/spawning_block unless block ~ ~-1 ~ #marcono1234:light_level_spawning/spawning_block run function marcono1234:light_level_spawning/_create_marker
