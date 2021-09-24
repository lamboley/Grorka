local _, addon = ...

ChatFrame1:ClearAllPoints()
ChatFrame1:SetPoint('BOTTOMLEFT', UIParent, 'BOTTOMLEFT', 0, 0)

for i = 1, 50 do
    if _G["ChatFrame" .. i] then
        _G["ChatFrame" .. i]:SetClampRectInsets(0, 0, 0, 0)
        _G["ChatFrame" .. i .. "EditBox"]:ClearAllPoints()
        _G["ChatFrame" .. i .. "EditBox"]:SetPoint("TOPLEFT", _G["ChatFrame" .. i], 0, 0)
        _G["ChatFrame" .. i .. "EditBox"]:SetWidth(_G["ChatFrame" .. i]:GetWidth())
        _G["ChatFrame" .. i]:HookScript("OnSizeChanged", function()
                _G["ChatFrame" .. i .. "EditBox"]:SetWidth(_G["ChatFrame" .. i]:GetWidth())
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