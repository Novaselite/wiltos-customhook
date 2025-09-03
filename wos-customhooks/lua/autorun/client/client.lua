surface.CreateFont("old_republic_24" , {
    font = "Aero Matics" ,
    size = 24
})

if ( SERVER ) then
    resource.AddFile( "materials/lvl_hud.png" )
end

timer.Simple(10, function()
    
    if wOS.ALCS.Config.Skills.MountLevelToHUD then
        hook.Remove("HUDPaint", "wOS.SkillTrees.MountHUD")
        local w, h = ScrW(), ScrH()
        local background_black = Color(0, 0, 0, 200)
        local background_white = Color(0, 0, 0, 200)

        hook.Add("HUDPaint", "SE.SkillTrees.MountHUD",  function()
            local ply = LocalPlayer()
            if not LocalPlayer():Alive() then 
                return 
            end
            local level = ply:GetNW2Int("wOS.SkillLevel", 0)
            local xp = ply:GetNW2Int("wOS.SkillExperience", 0)
            local reqxp = wOS.ALCS.Config.Skills.XPScaleFormula(level)
            local lastxp = 0
            

            if level > 0 then
                lastxp = wOS.ALCS.Config.Skills.XPScaleFormula(level - 1)
            end
            local rat = (xp - lastxp) / (reqxp - lastxp)
            if level == wOS.ALCS.Config.Skills.SkillMaxLevel then
                rat = 1
            end
            

            local hud = Material("materials/lvl_hud.png")
            surface.SetMaterial(hud)
            surface.SetDrawColor(team.GetColor(LocalPlayer():Team()))
            surface.DrawTexturedRect(ScrW() / 2 - (620 / 2 ) , ScrH() * -0.091, 620, 325)
            local myColor = Color(0, 0, 0)
            surface.SetDrawColor(myColor)
            draw.RoundedBox(10, (w * 0.408), h * 0.075, w * 0.193, h * 0.007, myColor)



            local speed = 75
            surface.SetDrawColor( HSVToColor(  ( CurTime() * speed ) % 360, .7, .8 ))
            surface.DrawRect((w * 0.408), h * 0.075, w * 0.193 * rat, h * 0.007)
            
	        draw.SimpleText("Level " .. level, "old_republic_24", (w * 0.805) / 1.6, h * 0.040, background_blau, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER) 
            
        end)
    end
end)