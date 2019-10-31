scoreboard objectives add light_level_spwn dummy
# Activate for 2 minutes: 20 * 60 * 2 = 2400
execute unless score #activeTime light_level_spwn matches 0.. run scoreboard players set #activeTime light_level_spwn 2400
# Only scan every 5 ticks
execute unless score #scanCooldown light_level_spwn matches 1.. run scoreboard players set #scanCooldown light_level_spwn 5
# Only show particle floating around player every 10 ticks
execute unless score #particleCooldown light_level_spwn matches 1.. run scoreboard players set #particleCooldown light_level_spwn 10
