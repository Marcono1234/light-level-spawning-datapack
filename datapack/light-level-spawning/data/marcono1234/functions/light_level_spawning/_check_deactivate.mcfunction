# Only perform more expensive checks if light level scanning is currently active
execute if score @s light_level_spwn matches 1.. run function marcono1234:light_level_spawning/_check_deactivate_skulls
advancement revoke @s only marcono1234:light_level_spawning/trigger_deactivate_check
