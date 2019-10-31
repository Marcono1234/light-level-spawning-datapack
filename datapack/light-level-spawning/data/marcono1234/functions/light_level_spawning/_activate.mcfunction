# Indicate to the player that the activation worked
execute anchored eyes run particle firework ^ ^0.2 ^0.02 0.2 0 0.2 0 15
scoreboard players operation @s light_level_spwn = #activeTime light_level_spwn
