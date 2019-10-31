execute if entity @s[nbt={Inventory:[{id:"minecraft:skeleton_skull",Slot:103b}]}] run function marcono1234:light_level_spawning/_activate
execute if entity @s[nbt={Inventory:[{id:"minecraft:wither_skeleton_skull",Slot:103b}]}] run function marcono1234:light_level_spawning/_activate
execute if entity @s[nbt={Inventory:[{id:"minecraft:zombie_head",Slot:103b}]}] run function marcono1234:light_level_spawning/_activate
execute if entity @s[nbt={Inventory:[{id:"minecraft:creeper_head",Slot:103b}]}] run function marcono1234:light_level_spawning/_activate
advancement revoke @s only marcono1234:light_level_spawning/trigger_activate_check
