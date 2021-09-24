local _, addon = ...

local RepairFrame = CreateFrame("FRAME")
RepairFrame:RegisterEvent("MERCHANT_SHOW")
RepairFrame:SetScript("OnEvent", function() 
    if not IsShiftKeyDown() and CanMerchantRepair() then
        if select(2, GetRepairAllCost()) then
            if IsInGuild() and CanGuildBankRepair() then
                RepairAllItems(1)
                RepairAllItems()
            else
                RepairAllItems()
            end
        end
    end
end)