function GrorkaMount()
    if CanExitVehicle() then
        VehicleExit()
    elseif IsMounted() then
        Dismount()
    elseif not InCombatLockdown() then
        print('mounting')
    end
end