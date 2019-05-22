-------------------------------------------------------------------
-- Wrapper functions for easy usage of CS2D commands in Lua      --
-------------------------------------------------------------------

-------------------------------------------------------------------
-- These functions make it easier to use CS2D commands in Lua    --
-- They call the parse functions with the fitting parameters     --
--                                                               --
-- Example without wrapper function:                             --
-- parse("spawnplayer "..id.." "..x.." " ..y)                    --
--                                                               --
-- Example with wrapper function:                                --
-- spawnplayer(id,x,y)                                           --
--                                                               --
-- Both examples do exactly the same but using the wrapper       --
-- function is much easier and not as error-prone as using parse.--
-- Therefore it is recommended to use the wrapper functions.     --
--                                                               --
-- Use the following line to include the wrapper in your script: --
-- if wrapperExt~=true then dofile("sys/lua/wrapperExt.lua") end --
-------------------------------------------------------------------

-- Set Wrapper state to LOADED/TRUE!
-- This flag can be used to check if the wrapper has already been loaded
wrapperExt = true

-- Functions
function banip(ip,duration,reason)
	parse("banip "..ip.." "..duration.." "..reason)
end

function banname(name,duration,reason)
	parse("banname "..name.." "..duration.." "..reason)
end

function bans()
	parse("bans")
end

function bansteam(id,duration,reason)
	parse("bansteam "..id.." "..duration.." "..reason)
end

function banusgn(id,duration,reason)
	parse("banusgn "..id.." "..duration.." "..reason)
end

function bot_autofill(auto_fill)
	parse("bot_autofill "..auto_fill)
end

function bot_freeze(freeze_bots)
	parse("bot_freeze "..freeze_bots)
end

function bot_keepfreeslots(keep_free_slots)
	parse("bot_keepfreeslots "..keep_free_slots)
end

function cmsg(message,player)
	parse("cmsg "..message.." "..player)
end

function damageobject(id,damage,player)
	parse("damageobject "..id.." "..damage.." "..player)
end

function damagetile(x,y,damage)
	parse("damagetile "..x.." "..y.." "..damage)
end

function endround(mode)
	parse("endround "..mode)
end

function freeprojectile(id,player)
	parse("freeprojectile "..id.." "..player)
end

function mp_buymenu(items)
	parse("mp_buymenu "..items)
end

function mp_connectionlimit(limit)
	parse("mp_connectionlimit "..limit)
end

function mp_flashlight(flashlight)
	parse("mp_flashlight "..flashlight)
end

function mp_floodprotignoretime(flood_ignore_time)
	parse("mp_floodprotignoretime "..flood_ignore_time)
end

function mp_hovertext(hover_text)
	parse("mp_hovertext "..hover_text)
end

function mp_hud(hud_elements)
	parse("mp_hud "..hud_elements)
end

function mp_hudscale(scale_mode)
	parse("mp_hudscale "..scale_mode)
end

function mp_lagcompensationdivisor(divisor)
	parse("mp_lagcompensationdivisor "..divisor)
end

function mp_postspawn(time)
	parse("mp_postspawn "..time)
end

function mp_recoil(dynamic_recoil)
	parse("mp_recoil "..dynamic_recoil)
end

function mp_shotweakening(weakening)
	parse("mp_shotweakening "..weakening)
end

function mp_smokeblock(smoke_blocking)
	parse("mp_smokeblock "..smoke_blocking)
end

function setammo(id,weapon,ammoin,ammo)
	parse("setammo "..id.." "..weapon.." "..ammoin.." "..ammo)
end

function setassists(player, assists)
	parse("setassists "..player.." "..assists)
end

function setmvp(player, mvps)
	parse("setmvp "..player.." "..mvps)
end

function setteamscores(tscore,ctscore)
	parse("setteamscores "..tscore.." "..ctscore)
end

function settile(x,y,tile)
	parse("settile "..x.." "..y.." "..tile)
end

function spawnprojectile(player,type,x,y,flydist,dir)
	parse("spawnprojectile "..player.." "..type.." "..x.." "..y.." "..flydist.." "..dir)
end

function sv_checkusgnlogin(check)
	parse("sv_checkusgnlogin "..check)
end

function sv_daylighttime(timeangle)
	parse("sv_daylighttime "..timeangle)
end

function sv_forcelight(forcelight)
	parse("sv_forcelight "..forcelight)
end

function sv_offscreendamage(off_screem_damage)
	parse("sv_offscreendamage "..off_screem_damage)
end

function sv_rconusers(users)
	parse("sv_rconusers "..users)
end

function sv_soundpos(soundfile,x,y,player)
	parse("sv_soundpos "..soundfile.." "..x.." "..y.." "..player)
end

function sv_stopsound(soundfile,player)
	parse("sv_stopsound "..soundfile.." "..player)
end

function triggerposition(x,y)
	parse("triggerposition "..x.." "..y)
end