function GunsBlazin()
    local items = getAllItems()
    for i = 0, items:size() -1 do
        local item = items:get(i)

        if item:getDisplayCategory() == "Ammo" then
            item:DoParam("Weight = 0")
        elseif item:getDisplayCategory() == "Weapon" then
            item:DoParam("ConditionLowerChanceOneIn = 9999999")
            item:DoParam("JamGunChance = 0")
        end
        if string.match(item:getName(), "Shotgun") then
            item:DoParam("MaxHitCount = 10")
        end

        if string.match(item:getName(), "Katana") then
            local maxRange = item:getMaxRange() * 5
            item:DoParam("MaxRange = "..maxRange)
            item:DoParam("MaxHitCount = 10")
            item:DoParam("MinAngle = 0")
        elseif string.match(item:getName(), "Machete") then
            local maxRange = item:getMaxRange() * 5
            item:DoParam("MaxRange = "..maxRange)
            item:DoParam("MaxHitCount = 10")
            item:DoParam("MinAngle = 0")
        elseif string.match(item:getName(), "Sword") then
            local maxRange = item:getMaxRange() * 5
            item:DoParam("MaxRange = "..maxRange)
            item:DoParam("MaxHitCount = 10")
            item:DoParam("MinAngle = 0")
        end

    end
end

Events.OnGameBoot.Add(GunsBlazin)