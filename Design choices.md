# Design choices
## Activation
### Strong requirements
1. Must not be always active
2. Player should not activate it by accident, at least not during common gameplay
3. Should not be activated using commands: Commands (including `/trigger`) are not intuitive for all players
4. Activation should not introduce a new item, e.g. datapack should not give the player a certain item
    - This allows the player to remove the datapack without leaving any garbage behind
    - It does not require additional logic to create such item
5. Activation should not apply negative effects to the player: They would not use it if this was the case
6. Has to make sure visualization is active long enough ...
    - to be useful: Player should be able to get to dark spot while visualization is still active; they should not have to memorize the locations
    - to justify activation: E.g. if item is consumed then it should be worth it
7. If activation toggles visualization, then ...
    - the player should be able to deactivate it again, without requiring anything, such as a specific item
    - it should be deactived again after a certain amount of time

### Soft requirements
1. Must not be for free
2. Activation should not require the player to rename an item: Named item would be useless (and confusing) after datapack has been removed
3. Player should be able to activate it without having to interact with the world, e.g. place blocks, throw items, ...

### Design choice
The light level scan is activated when the player drinks a mundane potion while wearing a mob head.
The scan then remains active until the player unequips the mob head or when a certain amount of time has passed.

Mundane potions have no use in vanilla Minecraft, but also do not incur a negative effect. Since they are consumed, the activation is not free. However, they are also not too expensive because they can be brewed using sugar (and blaze powder as fuel).
The requirement that the player has to wear a mob head forces them to give up one armor slot, so using the light level scan makes them more vulnerable and they have to make a choice.

## Visualization
### Strong requirements
1. Must be visible in dark areas (e.g. caves)
2. Used method must not interact with the world, i.e. (list incomplete):
    - Must not trigger pressure plates / trip wire
    - Must not remove or update blocks

### Soft requirements
1. There should be an indication when the light level scan is currently active for a player

### Design choice
Light levels &lt; 8 are visualized using the `end_rod` particle.

The `end_rod` particle is always bright regardless of the surrounding. Using a particle for visualization allows to completely relinquish creating additional entities. Therefore the datapack is guaranteed to not interact with the world.
