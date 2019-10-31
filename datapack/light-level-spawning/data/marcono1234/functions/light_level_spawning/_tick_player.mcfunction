scoreboard players remove @s light_level_spwn 1

# Show spawning spaces
scoreboard players operation #tmp light_level_spwn = @s light_level_spwn
scoreboard players operation #tmp light_level_spwn %= #scanCooldown light_level_spwn
execute if score #tmp light_level_spwn matches 0..0 run function marcono1234:light_level_spawning/show_spawning_spaces

# Show particles around player
scoreboard players operation #tmp light_level_spwn = @s light_level_spwn
scoreboard players operation #tmp light_level_spwn %= #particleCooldown light_level_spwn
# If count for ambient_entity_effect is 0, dx, dy and dz are RGB values; creating white particle
execute if score #tmp light_level_spwn matches 0..0 anchored eyes run particle ambient_entity_effect ^ ^-0.2 ^ 1 1 1 1 0
