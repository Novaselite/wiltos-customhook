wOS = wOS or {}
wOS.CustomFunction = wOS.CustomFunction or {}

--hook.Add("PlayerFootstep", "ALCS_FOOTSTEP", function(ply, pos, foot, sound, volume, rf)
    --if ply:GetNWInt("ALCS_CLK", 0) >= CurTime() then return true end
--end)

function wOS.CustomFunction.AddDevCooldown(ply, time)
    ply.UltCooldown = ply.UltCooldown or 0
    ply.UltCooldown = CurTime() + time
    net.Start("SyncDevCooldown")
    net.WriteUInt(time, 11)
    net.Send(ply)

    return
end

function wOS.CustomFunction.AddLeapCooldown(ply, time)
    ply.ForceLeapCooldown = ply.ForceLeapCooldown or 0
    ply.ForceLeapCooldown = CurTime() + time
    net.Start("SyncLeapCooldown")
    net.WriteUInt(time, 11)
    net.Send(ply)

    return
end

hook.Add("PlayerFootstep", "wOS.ALCS.Footstep", function(ply)
    if ply:GetNW2Float("CloakTime", 0) > CurTime() then
        return true
    end
end)