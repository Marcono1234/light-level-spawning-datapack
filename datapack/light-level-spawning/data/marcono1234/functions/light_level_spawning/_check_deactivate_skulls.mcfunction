scoreboard players set #tmp light_level_spwn 0
execute if entity @s[nbt={Inventory:[{id:"minecraft:skeleton_skull",Slot:103b}]}] run scoreboard players set #tmp light_level_spwn 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:wither_skeleton_skull",Slot:103b}]}] run scoreboard players set #tmp light_level_spwn 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:zombie_head",Slot:103b}]}] run scoreboard players set #tmp light_level_spwn 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:creeper_head",Slot:103b}]}] run scoreboard players set #tmp light_level_spwn 1
# Only deactivate if player is not wearing any skull
execute if score #tmp light_level_spwn matches 0..0 run function marcono1234:light_level_spawning/_deactivate
