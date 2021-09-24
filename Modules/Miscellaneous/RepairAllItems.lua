local select = select
local IsShiftKeyDown, CanMerchantRepair, GetRepairAllCost, IsInGuild, CanGuildBankRepair, RepairAllItems = IsShiftKeyDown, CanMerchantRepair, GetRepairAllCost, IsInGuild, CanGuildBankRepair, RepairAllItems

local frame = CreateFrame("FRAME")
frame:RegisterEvent("MERCHANT_SHOW")
frame:SetScript("OnEvent", function()
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