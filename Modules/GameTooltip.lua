hooksecurefunc('GameTooltip_SetDefaultAnchor', function(tooltip, parent)
    if tooltip and parent then
        local a, _, c  = tooltip:GetPoint()
        if a ~= 'BOTTOMRIGHT' or c ~= 'BOTTOMRIGHT' then
            tooltip:ClearAllPoints()
        end
        tooltip:SetPoint('BOTTOMRIGHT', UIParent, 'BOTTOMRIGHT', 0, 0)
    end
end)