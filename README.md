# light-level-spawning-datapack
Minecraft datapack which shows spots with light level &lt; 8 around the player, i.e. places where monsters can spawn.  
![Demo image](/doc/demo-image.png)

## Repository layout
The [datapack](/datapack) folder contains the actual datapack as a separate folder.  
This allows separating meta information (like this README file, license, ...) from files used by the datapack.

## Dependencies
All of these datapacks have to be installed for this datapack to work correctly.

- https://github.com/Marcono1234/light-level-datapack

## Usage
### Initialization
Should happen automatically when the datapack is (re-)loaded. However, it can also be triggered manually by running:
```
/function marcono1234:light_level_spawning/_init
```

### Actions
#### Activate light level scan
1. Equip one of these mob heads:
    - Skeleton Skull
    - Wither Skeleton Skull
    - Zombie Head
    - Creeper Head
2. While wearing the skull, drink a Mundane Potion

Once activated it will show white particles around your head for a short moment. For 2 minutes and as long as you are wearing the skull, spots with light level &lt; 8 in the direction you are looking will be highlighted.

While the light level scan is active for a player, they will emit white ambient potion particles.

:warning: The light level represents the "visible light (`max(sky-darkening,block)`)". Therefore on the surface during day it will not show positions where monsters could spawn during night.

### Customization
- <code>/scoreboard players set #activeTime light_level_spwn <i>&lt;value&gt;</i></code>  
    Amount of ticks the light level scan should remain active once activated. Defaults to 2400 (2 minutes).
- <code>/scoreboard players set #scanCooldown light_level_spwn <i>&lt;value&gt;</i></code>  
    Amount of ticks to wait between running the light level scans. Choosing a higher value can improve performance, but the indicators might not be created fast enough when the player sprints. Defaults to 5.
- <code>/scoreboard players set #particleCooldown  light_level_spwn <i>&lt;value&gt;</i></code>  
    Amount of ticks to wait between creating potion particles around players who have the light level scan activated. Defaults to 10.

### Removal
To remove all scoreboard objectives used by this datapack, run:
```
/function marcono1234:light_level_spawning/_remove
```

Afterwards the datapack folder should be removed since it won't work correctly anymore.  
It can be [initialized](#Initialization) to become functional again.
