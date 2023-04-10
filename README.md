# Project Zomboid Mod - Guns Blazin #

Tested on Build 41.78.16.

This mod makes some changes to items to allow for a more more 'action movie' style gameplay.

Changes:
1. For any item with DisplayCategory of "Ammo"
 1. "Weight" = 0
2. For any item that has ConditionLowerChanceOneIn:
 1. "ConditionLowerChanceOneIn" = 999999
 2. "JamGunChance" = 0
3. Any "Shotgun": (based on SwingSound)
 1. "MaxHitCount" = 10 (only matters if you turn multi-hit on in the sandbox settings)
4. Any "Katana" or "Machete" (or "Sword" for other mods): (based on SwingSound)
 1. "MaxRange" = "MaxRange" * 5
 2. "MaxHitCount" = 10 (only matters if you turn multi-hit on in the sandbox settings)
 3. "MinAngle" = 0 (hit nearest visibile enemy/enemies)

Known Issues:
1. Since a lot of the changes are based on the SwingSound, this may not work on a weapon from a mod if it doesn't match the LUA find criteria.

It should work with most mods.

I made this just so a bunch of friends and I could load up with weapons, set the population super-high, and fight our way to victory/failure.


You can find this mod on the Steam Workshop here: https://steamcommunity.com/sharedfiles/filedetails/?id=2937529325