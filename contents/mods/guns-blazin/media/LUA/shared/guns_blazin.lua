function GunsBlazin()
    local items = getAllItems()
    for i = 0, items:size() -1 do
        local item = items:get(i)

        if item:getDisplayCategory() == "Ammo" then
            item:DoParam("Weight = 0")
        elseif item:getDisplayCategory() == "Weapon" then
            item:DoParam("ConditionLowerChanceOneIn = 100000")
            item:DoParam("JamGunChance = 0")
        end
        if string.match(item:getName(), "Katana") then
            item:DoParam("ConditionLowerChanceOneIn = 100000")
            local maxRange = item:getMaxRange() * 5
            item:DoParam("MaxRange = "..maxRange)
            item:DoParam("MaxHitCount = 10")
            item:DoParam("MinAngle = 0")
        elseif string.match(item:getName(), "Machete") then
            item:DoParam("ConditionLowerChanceOneIn = 100000")
            local maxRange = item:getMaxRange() * 5
            item:DoParam("MaxRange = "..maxRange)
            item:DoParam("MaxHitCount = 10")
            item:DoParam("MinAngle = 0")
        end
    end
end

Events.OnGameBoot.Add(GunsBlazin)