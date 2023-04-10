function LongBladeChanges(item)
    local maxRange = item:getMaxRange() * 5
    item:DoParam("MaxRange = "..maxRange)
    item:DoParam("MaxHitCount = 10")
    item:DoParam("MinAngle = 0")
end

function GunsBlazin()
    local items = getAllItems()
    for i = 0, items:size() -1 do

        local item = items:get(i)

        -- Weapons don't break and guns don't jam
        item:DoParam("ConditionLowerChanceOneIn = 999999")
        item:DoParam("JamGunChance = 0")
    
        if item:getDisplayCategory() == "Ammo" then
            item:DoParam("Weight = 0")
        end
        
        -- I have had lots of issues using Type and Name. SwingSound seems to work for now.
        -- This is for Shotguns
        swingSound = string.lower(item:getSwingSound())
        if string.find(swingSound, "shot") then
            item:DoParam("MaxHitCount = 10")
        end

        -- I can't figure out how to just select Long Blade weapons, so this will do for now
        if string.find(swingSound, "katana") then
            LongBladeChanges(item)
        elseif string.find(swingSound, "machete") then
            LongBladeChanges(item)
        elseif string.find(swingSound, "axe") then
            LongBladeChanges(item)
        end

    end
end

Events.OnGameBoot.Add(GunsBlazin)