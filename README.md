# Project Zomboid Mod - Guns Blazin #

Tested on Build 41.78.16.

This mod makes some changes to items to allow for a more more 'action movie' style gameplay.

Changes:
1. For any item with DisplayCategory of "Ammo"
- "Weight" = 0

2. For any item that has DisplayCategory of "Weapon":
- "ConditionLowerChanceOneIn" = 100000
- "JamGunChance" = 0

(For some reason, not every weapon has a DisplayCategory of "Weapon", even though the wiki says they do, as of 2023-02-27.)

3) For any item with "Katana" or "Machete" in the name:
- "ConditionLowerChanceOneIn" = 100000"
- "MaxRange" = "MaxRange" * 5
- "MaxHitCount" = 10 (only matters if you turn multi-hit on in the sandbox settings)
- "MinAngle" = 0 (hit nearest visibile enemy/enemies)

(Some of the katana changes only work on items that are created after you activate the mod.)

It should work with most mods that match the criteria above.

I made this just so a bunch of friends and I could load up with weapons, set the population super-high, and shoot our way to victory/failure.