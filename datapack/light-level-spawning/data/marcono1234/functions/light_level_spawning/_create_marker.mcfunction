function marcono1234:light_level/get_light_level
execute if score @s light_level matches 0..7 run particle end_rod ~ ~0.15 ~ 0 0 0 0 3
