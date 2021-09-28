local _G = _G
local hooksecurefunc = hooksecurefunc

DEFAULT_CHATFRAME_ALPHA = 0

ChatFrame1:ClearAllPoints()
ChatFrame1:SetPoint('BOTTOMLEFT', UIParent, 'BOTTOMLEFT', 0, 0)

for i = 1, 50 do
    local chatFrame = _G["ChatFrame" .. i]
    if chatFrame then
        local editBox = _G["ChatFrame" .. i .. "EditBox"]
        chatFrame:SetClampRectInsets(0, 0, 0, 0)
        editBox:ClearAllPoints()
        editBox:SetPoint("TOPLEFT", chatFrame, 0, 0)
        editBox:SetWidth(chatFrame:GetWidth())
        chatFrame:HookScript("OnSizeChanged", function()
            editBox:SetWidth(chatFrame:GetWidth())
        end)
    end
end

hooksecurefunc("FloatingChatFrame_UpdateBackgroundAnchors", function(self)
    self:SetClampRectInsets(0, 0, 0, 0)
end)

hooksecurefunc("FCF_OpenTemporaryWindow", function()
    local cf = FCF_GetCurrentChatFrame():GetName() or nil
    if cf then
        _G[cf]:SetClampRectInsets(0, 0, 0, 0)
        _G[cf .. "EditBox"]:ClearAllPoints()
        _G[cf .. "EditBox"]:SetPoint("TOPLEFT", cf, "TOPLEFT", 0, 0)
        _G[cf .. "EditBox"]:SetWidth(_G[cf]:GetWidth())
        _G[cf]:HookScript("OnSizeChanged", function()
                _G[cf .. "EditBox"]:SetWidth(_G[cf]:GetWidth())
        end)
    end
end)