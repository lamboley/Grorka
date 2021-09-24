local GetContainerNumSlots, GetContainerItemInfo, UseContainerItem = GetContainerNumSlots, GetContainerItemInfo, UseContainerItem

local frame = CreateFrame("FRAME")
frame:RegisterEvent("MERCHANT_SHOW")
frame:SetScript("OnEvent", function()
    local icon, quality
    for bagID = 0, 4 do
        for slot = 1, GetContainerNumSlots(bagID) do
            icon, _, _, quality = GetContainerItemInfo(bagID, slot)
            if icon and quality == 0 then
                UseContainerItem(bagID, slot)
            end
        end
    end
end)