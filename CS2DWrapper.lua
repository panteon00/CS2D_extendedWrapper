-------------------------------------------------------------------
-- Wrapper functions for easy usage of CS2D commands in Lua      --
-- 25.03.2011 - www.UnrealSoftware.de                            --
-------------------------------------------------------------------

-------------------------------------------------------------------
-- These functions make it easier to use CS2D commands in Lua    --
-- They call the parse functions with the fitting parameters     --
--                                                               --
-- Example without wrapper function:                             --
-- parse("spawnplayer "..id.." "..x.." " ..y)                    --
--                                                               --
-- Example with wrapper function:                                --
-- cs2d.spawnplayer(id,x,y)                                      --
--                                                               --
-- Both examples do exactly the same but using the wrapper       --
-- function is much easier and not as error-prone as using parse.--
-- Therefore it is recommended to use the wrapper functions.     --
--                                                               --
-- Use the following line to include the wrapper in your script: --
--if cs2dwrapper~=true then dofile("sys/lua/cs2dwrapper.lua") end--
-------------------------------------------------------------------

-- Set Wrapper state to LOADED/TRUE!
-- This flag can be used to check if the wrapper has already been loaded
cs2dwrapper = true

-- Functions
cs2d = {}

function cs2d.banip(ip,duration,reason)
	parse("banip "..ip.." "..duration.." "..reason)
end

function cs2d.banname(name,duration,reason)
	parse("banname "..name.." "..duration.." "..reason)
end

function cs2d.bans()
	parse("bans")
end

function cs2d.bansteam(id,duration,reason)
	parse("bansteam "..id.." "..duration.." "..reason)
end

function cs2d.banusgn(id,duration,reason)
	parse("banusgn "..id.." "..duration.." "..reason)
end

function cs2d.bot_add()
	parse("bot_add")
end

function cs2d.bot_add_ct()
	parse("bot_add_ct")
end

function cs2d.bot_add_t()
	parse("bot_add_t")
end

function cs2d.bot_autofill(auto_fill)
	parse("bot_autofill "..auto_fill)
end

function cs2d.bot_count(count)
	parse("bot_count "..count)
end

function cs2d.bot_freeze(freeze_bots)
	parse("bot_freeze "..freeze_bots)
end

function cs2d.bot_jointeam(team)
	parse("bot_jointeam "..team)
end

function cs2d.bot_keepfreeslots(keep_free_slots)
	parse("bot_keepfreeslots "..keep_free_slots)
end

function cs2d.bot_kill()
	parse("bot_kill")
end

function cs2d.bot_prefix(prefix)
	parse("bot_prefix "..prefix)
end

function cs2d.bot_remove()
	parse("bot_remove")
end

function cs2d.bot_remove_all()
	parse("bot_remove_all")
end

function cs2d.bot_remove_ct()
	parse("bot_remove_ct")
end

function cs2d.bot_remove_t()
	parse("bot_remove_t")
end

function cs2d.bot_skill(skill)
	parse("bot_skill "..skill)
end

function cs2d.bot_weapons(weapons)
	parse("bot_weapons "..weapons)
end

function cs2d.changelevel(map)
	parse("changelevel "..map)
end

function cs2d.changemap(map)
	parse("changemap "..map)
end

function cs2d.cmsg(message,player)
	parse("cmsg "..message.." "..player)
end

function cs2d.customkill(killer,weaponname,victim)
	parse("customkill "..killer.." "..weaponname.." "..victim)
end

function cs2d.damageobject(id,damage,player)
	parse("damageobject "..id.." "..damage.." "..player)
end

function cs2d.damagetile(x,y,damage)
	parse("damagetile "..x.." "..y.." "..damage)
end

function cs2d.deathslap(player)
	parse("deathslap "..player)
end

function cs2d.effect(effect,x,y,p1,p2,r,g,b)
	parse('effect "'..effect..'" '..x..' '..y..' '..p1..' '..p2..' '..r..' '..g..' '..b)
end

function cs2d.endround(mode)
	parse("endround "..mode)
end

function cs2d.equip(player,weapon)
	parse("equip "..player.." "..weapon)
end

function cs2d.explosion(x,y,size,damage,sourceplayer)
	parse("explosion "..x.." "..y.." "..size.." "..damage.." "..sourceplayer)
end

function cs2d.flashplayer(player,intensity)
	parse("flashplayer "..player.." "..intensity)
end

function cs2d.flashposition(x,y,intensity)
	parse("flashposition "..x.." "..y.." "..intensity)
end

function cs2d.freeprojectile(id,player)
	parse("freeprojectile "..id.." "..player)
end

function cs2d.hudtxt(id,text,x,y,align)
	parse("hudtxt "..id.." "..text.." "..x.." "..y.." "..align)
end

function cs2d.hudtxt2(player,id,text,x,y,align)
	parse("hudtxt2 "..player.." "..id.." "..text.." "..x.." "..y.." "..align)
end

function cs2d.hudtxtalphafade(player,id,duration,alpha)
	parse("hudtxtalphafade "..player.." "..id.." "..duration.." "..alpha)
end

function cs2d.hudtxtcolorfade(player,id,duration,red,green,blue)
	parse("hudtxtcolorfade "..player.." "..id.." "..duration.." "..red.." "..green.." "..blue)
end

function cs2d.hudtxtmove(player,id,duration,x,y)
	parse("hudtxtmove "..player.." "..id.." "..duration.." "..x.." "..y)
end

function cs2d.items()
	parse("items")
end

function cs2d.kick(player,reason)
	parse("kick "..player.." "..reason)
end

function cs2d.killobject(objectid)
	parse("killobject "..objectid)
end

function cs2d.killplayer(player)
	parse("killplayer "..player)
end

function cs2d.listbans()
	parse("listbans")
end

function cs2d.listplayers()
	parse("listplayers")
end

function cs2d.logaddress_add(address)
	parse("logaddress_add "..address)
end

function cs2d.logaddress_remove(address)
	parse("logaddress_remove "..address)
end

function cs2d.logaddress_removeall()
	parse("logaddress_removeall")
end

function cs2d.lua(script)
	parse("lua "..script)
end

function cs2d.luareset()
	parse("luareset")
end

function cs2d.makect(player)
	parse("makect "..player)
end

function cs2d.makespec(player)
	parse("makespec "..player)
end

function cs2d.maket(player)
	parse("maket "..player)
end

-- Map() function shouldn't be overwritten by default
-- function cs2d.map(map)
-- 	parse("map "..map)
-- end

function cs2d.maps()
	parse("maps")
end

function cs2d.mp_antispeeder(antispeederprotection)
	parse("mp_antispeeder "..antispeederprotection)
end

function cs2d.mp_autogamemode(autogamemode)
	parse("mp_autogamemode "..autogamemode)
end

function cs2d.mp_autoteambalance(balance)
	parse("mp_autoteambalance "..balance)
end

function cs2d.mp_building_health(building,price)
	parse("mp_building_health "..building.." "..price)
end

function cs2d.mp_building_limit(building,limit)
	parse("mp_building_limit "..building.." "..limit)
end

function cs2d.mp_building_price(building,price)
	parse("mp_building_price "..building.." "..price)
end

function cs2d.mp_buymenu(items)
	parse("mp_buymenu "..items)
end

function cs2d.mp_buytime(_time)
	parse("mp_buytime ".._time)
end

function cs2d.mp_c4timer(_time)
	parse("mp_c4timer ".._time)
end

function cs2d.mp_connectionlimit(limit)
	parse("mp_connectionlimit "..limit)
end

function cs2d.mp_curtailedexplosions(curtailed)
	parse("mp_curtailedexplosions "..curtailed)
end

function cs2d.mp_damagefactor(factor)
	parse("mp_damagefactor "..factor)
end

function cs2d.mp_deathdrop(drop)
	parse("mp_deathdrop "..drop)
end

function cs2d.mp_dispenser_health(health)
	parse("mp_dispenser_health "..health)
end

function cs2d.mp_dispenser_money(money)
	parse("mp_dispenser_money "..money)
end

function cs2d.mp_dmspawnmoney(money)
	parse("mp_dmspawnmoney "..money)
end

function cs2d.mp_dropgrenades(drop)
	parse("mp_dropgrenades "..drop)
end

function cs2d.mp_flashlight(flashlight)
	parse("mp_flashlight "..flashlight)
end

function cs2d.mp_floodprot(floodprotection)
	parse("mp_floodprot "..floodprotection)
end

function cs2d.mp_floodprotignoretime(flood_ignore_time)
	parse("mp_floodprotignoretime "..flood_ignore_time)
end

function cs2d.mp_freezetime(_time)
	parse("mp_freezetime ".._time)
end

function cs2d.mp_grenaderebuy(allowed)
	parse("mp_grenaderebuy "..allowed)
end

function cs2d.mp_hostagepenalty(kills)
	parse("mp_hostagepenalty "..kills)
end

function cs2d.mp_hovertext(hover_text)
	parse("mp_hovertext "..hover_text)
end

function cs2d.mp_hud(hud_elements)
	parse("mp_hud "..hud_elements)
end

function cs2d.mp_hudscale(scale_mode)
	parse("mp_hudscale "..scale_mode)
end

function cs2d.mp_idleaction(action)
	parse("mp_idleaction "..action)
end

function cs2d.mp_idlekick(idleaction)
	parse("mp_idlekick "..idleaction)
end

function cs2d.mp_idletime(_time)
	parse("mp_idletime ".._time)
end

function cs2d.mp_infammo(infiniteammo)
	parse("mp_infammo "..infiniteammo)
end

function cs2d.mp_kevlar(percent)
	parse("mp_kevlar "..percent)
end

function cs2d.mp_kickpercent(percent)
	parse("mp_kickpercent "..percent)
end

function cs2d.mp_killbuildingmoney(money)
	parse("mp_killbuildingmoney "..money)
end

function cs2d.mp_killbuildings(kill)
	parse("mp_killbuildings "..kill)
end

function cs2d.mp_killinfo(info)
	parse("mp_killinfo "..info)
end

function cs2d.mp_killteambuildings(mode)
	parse("mp_killteambuildings "..mode)
end

function cs2d.mp_lagcompensation(maxcompensationtime)
	parse("mp_lagcompensation "..maxcompensationtime)
end

function cs2d.mp_lagcompensationdivisor(divisor)
	parse("mp_lagcompensationdivisor "..divisor)
end

function cs2d.mp_localrconoutput(output)
	parse("mp_localrconoutput "..output)
end

function cs2d.mp_luamap(use)
	parse("mp_luamap "..use)
end

function cs2d.mp_luaserver(file)
	parse("mp_luaserver "..file)
end

function cs2d.mp_mapgoalscore(score)
	parse("mp_mapgoalscore "..score)
end

function cs2d.mp_mapvoteratio(percent)
	parse("mp_mapvoteratio "..percent)
end

function cs2d.mp_maxclientsip(clients)
	parse("mp_maxclientsip "..clients)
end

function cs2d.mp_maxrconfails(maxfails)
	parse("mp_maxrconfails "..maxfails)
end

function cs2d.mp_natholepunching(allowpunching)
	parse("mp_natholepunching "..allowpunching)
end

function cs2d.mp_pinglimit(limit)
	parse("mp_pinglimit "..limit)
end

function cs2d.mp_postspawn(time)
	parse("mp_postspawn "..time)
end

function cs2d.mp_radar(radar)
	parse("mp_radar "..radar)
end

function cs2d.mp_randomspawn(_random)
	parse("mp_randomspawn ".._random)
end

function cs2d.mp_recoil(dynamic_recoil)
	parse("mp_recoil "..dynamic_recoil)
end

function cs2d.mp_reservations(reservations)
	parse("mp_reservations "..reservations)
end

function cs2d.mp_respawndelay(delay)
	parse("mp_respawndelay "..delay)
end

function cs2d.mp_roundlimit(rounds)
	parse("mp_roundlimit "..rounds)
end

function cs2d.mp_roundtime(_time)
	parse("mp_roundtime ".._time)
end

function cs2d.mp_shotweakening(weakening)
	parse("mp_shotweakening "..weakening)
end

function cs2d.mp_smokeblock(smoke_blocking)
	parse("mp_smokeblock "..smoke_blocking)
end

function cs2d.mp_startmoney(money)
	parse("mp_startmoney "..money)
end

function cs2d.mp_supply_items(itemlist)
	parse("mp_supply_items "..itemlist)
end

function cs2d.mp_teamkillpenalty(kills)
	parse("mp_teamkillpenalty "..kills)
end

function cs2d.mp_teleportreload(reloadtime)
	parse("mp_teleportreload "..reloadtime)
end

function cs2d.mp_tempbantime(_time)
	parse("mp_tempbantime ".._time)
end

function cs2d.mp_timelimit(_time)
	parse("mp_timelimit ".._time)
end

function cs2d.mp_tkpunish(kill)
	parse("mp_tkpunish "..kill)
end

function cs2d.mp_trace(accuracy)
	parse("mp_trace ".."accuracy")
end

function cs2d.mp_turretdamage(damage)
	parse("mp_turretdamage "..damage)
end

function cs2d.mp_unbuildable(buildings)
	parse("mp_unbuildable "..buildings)
end

function cs2d.mp_unbuyable(unbuyable)
	parse("mp_unbuyable "..unbuyable)
end

function cs2d.mp_vulnerablehostages(vulnerable)
	parse("mp_vulnerablehostages "..vulnerable)
end

function cs2d.mp_winlimit(wins)
	parse("mp_winlimit "..wins)
end

function cs2d.mp_wpndmg(name,damage)
	parse("mp_wpndmg "..name.." "..damage)
end

function cs2d.mp_wpndmg_z1(name,damage)
	parse("mp_wpndmg_z1 "..name.." "..damage)
end

function cs2d.mp_wpndmg_z2(name,damage)
	parse("mp_wpndmg_z2 "..name.." "..damage)
end

function cs2d.mp_zombiedmg(percentageofdamage)
	parse("mp_zombiedmg "..percentageofdamage)
end

function cs2d.mp_zombiekillequip(weapon)
	parse("mp_zombiekillequip "..weapon)
end

function cs2d.mp_zombiekillscore(killscore)
	parse("mp_zombiekillscore "..killscore)
end

function cs2d.mp_zombierecover(recover)
	parse("mp_zombierecover "..recover)
end

function cs2d.mp_zombiespeedmod(speedmod)
	parse("mp_zombiespeedmod "..speedmod)
end

function cs2d.msg(message)
	parse("msg "..message)
end

function cs2d.rcon(commands)
	parse("rcon "..commands)
end

function cs2d.rcon_password(password)
	parse("rcon_password "..password)
end

function cs2d.rcon_pw(password)
	parse("rcon_pw "..password)
end

function cs2d.removeitem(item)
	parse("removeitem "..item)
end

function cs2d.reroute(player,address)
	parse("reroute "..player.." "..address)
end

function cs2d.restart(delay)
	parse("restart "..delay)
end

function cs2d.restartround(delay)
	parse("restartround "..delay)
end

function cs2d.setammo(id,weapon,ammoin,ammo)
	parse("setammo "..id.." "..weapon.." "..ammoin.." "..ammo)
end

function cs2d.setarmor(player,armor)
	parse("setarmor "..player.." "..armor)
end

function cs2d.setassists(player, assists)
	parse("setassists "..player.." "..assists)
end

function cs2d.setdeaths(player,deaths)
	parse("setdeaths "..player.." "..deaths)
end

function cs2d.sethealth(player,health)
	parse("sethealth "..player.." "..health)
end

function cs2d.setmaxhealth(player,maxhealth)
	parse("setmaxhealth "..player.." "..maxhealth)
end

function cs2d.setmoney(player,money)
	parse("setmoney "..player.." "..money)
end

function cs2d.setmvp(player, mvps)
	parse("setmvp "..player.." "..mvps)
end

function cs2d.setname(player,name)
	parse("setname "..player.." "..name)
end

function cs2d.setpos(player,x,y)
	parse("setpos "..player.." "..x.." "..y)
end

function cs2d.setscore(player,score)
	parse("setscore "..player.." "..score)
end

function cs2d.setteamscores(tscore,ctscore)
	parse("setteamscores "..tscore.." "..ctscore)
end

function cs2d.settile(x,y,tile)
	parse("settile "..x.." "..y.." "..tile)
end

function cs2d.setweapon(player,weapon)
	parse("setweapon "..player.." "..weapon)
end

function cs2d.shake(player,power)
	parse("shake "..player.." "..power)
end

function cs2d.slap(player)
	parse("slap "..player)
end

function cs2d.spawnitem(item,x,y)
	parse("spawnitem "..item.." "..x.." "..y)
end

function cs2d.spawnnpc(_type,x,y,rot)
	parse("spawnnpc ".._type.." "..x.." "..y.." "..rot)
end

function cs2d.spawnobject(_type,x,y,rot,mode,team,player)
	parse("spawnobject ".._type.." "..x.." "..y.." "..rot.." "..mode.." "..team.." "..player)
end

function cs2d.spawnplayer(player,x,y)
	parse("spawnplayer "..player.." "..x.." "..y)
end

function cs2d.spawnprojectile(player,type,x,y,flydist,dir)
	parse("spawnprojectile "..player.." "..type.." "..x.." "..y.." "..flydist.." "..dir)
end

function cs2d.speedmod(player,speedmod)
	parse("speedmod "..player.." "..speedmod)
end

function cs2d.strip(player,weapon)
	parse("strip "..player.." "..weapon)
end

function cs2d.sv_checkusgnlogin(check)
	parse("sv_checkusgnlogin "..check)
end

function cs2d.sv_daylighttime(timeangle)
	parse("sv_daylighttime "..timeangle)
end

function cs2d.sv_forcelight(forcelight)
	parse("sv_forcelight "..forcelight)
end

function cs2d.sv_fow(fow)
	parse("sv_fow "..fow)
end

function cs2d.sv_friendlyfire(FF)
	parse("sv_friendlyfire "..FF)
end

function cs2d.sv_gamemode(mode)
	parse("sv_gamemode "..mode)
end

function cs2d.sv_gm(mode)
	parse("sv_gm "..mode)
end

function cs2d.sv_hostport(port)
	parse("sv_hostport "..port)
end

function cs2d.sv_lan(lan)
	parse("sv_lan "..lan)
end

function cs2d.sv_map(map)
	parse("sv_map "..map)
end

function cs2d.sv_maptransfer(transfer)
	parse("sv_maptransfer "..transfer)
end

function cs2d.sv_maxplayers(players)
	parse("sv_maxplayers "..players)
end

function cs2d.sv_msg(message)
	parse("sv_msg "..message)
end

function cs2d.sv_msg2(player,message)
	parse("sv_msg2 "..player.." "..message)
end

function cs2d.sv_name(name)
	parse("sv_name "..name)
end

function cs2d.sv_offscreendamage(off_screem_damage)
	parse("sv_offscreendamage "..off_screem_damage)
end

function cs2d.sv_password(password)
	parse("sv_password "..password)
end

function cs2d.sv_rcon(rconpassword)
	parse("sv_rcon "..rconpassword)
end

function cs2d.sv_rconusers(users)
	parse("sv_rconusers "..users)
end

function cs2d.sv_restart(delay)
	parse("sv_restart "..delay)
end

function cs2d.sv_restartround(delay)
	parse("sv_restartround "..delay)
end

function cs2d.sv_sound(soundfile)
	parse("sv_sound "..soundfile)
end

function cs2d.sv_sound2(player,soundfile)
	parse("sv_sound2 "..player.." "..soundfile)
end

function cs2d.sv_soundpos(soundfile,x,y,player)
	parse("sv_soundpos "..soundfile.." "..x.." "..y.." "..player)
end

function cs2d.sv_specmode(mode)
	parse("sv_specmode "..mode)
end

function cs2d.sv_spraytransfer(spraytransfer)
	parse("sv_spraytransfer "..spraytransfer)
end

function cs2d.sv_stopsound(soundfile,player)
	parse("sv_stopsound "..soundfile.." "..player)
end

function cs2d.sv_usgnonly(usgnonly)
	parse("sv_usgnonly "..usgnonly)
end

function cs2d.transfer_speed(speed)
	parse("transfer_speed "..speed)
end

function cs2d.trigger(trigger)
	parse("trigger "..trigger)
end

function cs2d.triggerposition(x,y)
	parse("triggerposition "..x.." "..y)
end

function cs2d.unban(banmask)
	parse("unban "..banmask)
end

function cs2d.unbanall()
	parse("unbanall")
end

function cs2d.usgn_addserver()
	parse("usgn_addserver")
end

function cs2d.usgn_info()
	parse("usgn_info")
end