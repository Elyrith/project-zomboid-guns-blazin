# Project Zomboid Mod - Guns Blazin #

Tested on Build 41.78.16.

This mod makes some changes to items to allow for a more more 'action movie' style gameplay.

Changes:
1. For any item with DisplayCategory of "Ammo"
 1. "Weight" = 0
2. For any item that has DisplayCategory of "Weapon":
 1. "ConditionLowerChanceOneIn" = 9999999
 2. "JamGunChance" = 9999999
3. For any item with "Shotgun" in the name:
 1. "MaxHitCount" = 10 (only matters if you turn multi-hit on in the sandbox settings)
4. For any item with "Katana" or "Machete" (or "Sword" for other mods) in the name:
 2. "MaxRange" = "MaxRange" * 5
 3. "MaxHitCount" = 10 (only matters if you turn multi-hit on in the sandbox settings)
 4. "MinAngle" = 0 (hit nearest visibile enemy/enemies)

Known Issues:
1. For some reason, not every weapon has a DisplayCategory of "Weapon". Some of them are "Cooking" (like Baking Pan). I'm working on this.
2. The katana and machete MaxRange change only work on items that are created after you activate the mod.

It should work with most mods that match the criteria above.

I made this just so a bunch of friends and I could load up with weapons, set the population super-high, and fight our way to victory/failure.


You can find this mod on the Steam Workshop here: https://steamcommunity.com/sharedfiles/filedetails/?id=2937529325