local aimchance = 55 -- optimal %
local font = draw.CreateFont( "Consolas", 15, 25 )
local debugval = draw.CreateFont( "Consolas", 40, 100)

local function randhit(cmd)
    if input.IsButtonPressed(MOUSE_LEFT) then
        if math.random(1,100) >= aimchance then
            gui.SetValue("aim bot", 1 )
        elseif math.random(1,100) <= aimchance - 1 then
            gui.SetValue("aim bot", 0 )
        end
    end
end

local function watermark()
    local sv = aimchance
    draw.Color( 255, 255, 255, 155 )
    draw.SetFont(font)
    draw.Text( 20, 35, "Oliver's Hitchance Script, current hitchance % : [" .. tostring((100 - sv)) .. "]" )
end
callbacks.Register( "Draw", "draw", watermark)
callbacks.Register( "CreateMove", randhit)
