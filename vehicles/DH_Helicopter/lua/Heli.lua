local M = {}
local min = math.min
local max = math.max

local function init()
    electrics.values.throttle_change = 0
	electrics.values.heli_throttle = 0--to display on gui
	electrics.values.heli_throttleToEngine = 0--actually goes to engine
	electrics.values.heli_regenThrottle = 0--required for regen to work
	electrics.values.heli_fuelwarn = 0
	electrics.values.heli_engwarn = 0
	electrics.values.collective = 0
	electrics.values.keys_collective = 0
	electrics.values.collective_change = 0
	electrics.values.msight = 0
	electrics.values.dh_thrusta = nil
	electrics.values.dh_thrustb = nil
	electrics.values.dh_thrustc = nil
	electrics.values.dh_thrustd = nil
	electrics.values.dh_thruste = nil
	electrics.values.dh_thrustf = nil
	electrics.values.dh_thrustg = nil
	electrics.values.dh_thrusth = nil
	electrics.values.dh_thrusti = nil
	electrics.values.dh_thrustj = nil
	electrics.values.dh_thrustk = nil
	electrics.values.dh_thrustl = nil
	delay = 0
	atimer = 0
	btimer = 0
	ctimer = 0
	dtimer = 0
	etimer = 0
	ftimer = 0
	gtimer = 0
	htimer = 0
	itimer = 0
	jtimer = 0
	ktimer = 0
	ltimer = 0
	dh_fire = 12
	dh_missile_1 = 0
	dh_missile_2 = 0
	dh_missile_3 = 0
	dh_missile_4 = 0
	dh_missile_5 = 0
	dh_missile_6 = 0
	dh_missile_7 = 0
	dh_missile_8 = 0
	dh_missile_9 = 0
	dh_missile_10 = 0
	dh_missile_11 = 0
	dh_missile_12 = 0
	particles1 = 0
	particles2 = 0
	particles3 = 0
	particles4 = 0
	particles5 = 0
	particles6 = 0
	particles7 = 0
	particles8 = 0
	particles9 = 0
	particles10 = 0
	particles11 = 0
	particles12 = 0
	
	for k, node in pairs (v.data.nodes) do
		if node.name == "mbl15" then launcher1 = k elseif
		   node.name == "ma1"   then missile1 = k elseif
		   node.name == "ma0"   then missile2 = k elseif
		   node.name == "mbr15" then launcher2 = k elseif
		   node.name == "mb1"   then missile3 = k elseif
		   node.name == "mb0"   then missile4 = k elseif
		   node.name == "mbl14" then launcher3 = k elseif
		   node.name == "mc1"   then missile5 = k elseif
		   node.name == "mc0"   then missile6 = k elseif
		   node.name == "mbr14" then launcher4 = k elseif
		   node.name == "md1"   then missile7 = k elseif
		   node.name == "md0"   then missile8 = k elseif
		   node.name == "mbl17" then launcher5 = k elseif
		   node.name == "me1"   then missile9 = k elseif
		   node.name == "me0"   then missile10 = k elseif
		   node.name == "mbr17" then launcher6 = k elseif
		   node.name == "mf1"   then missile11 = k elseif
		   node.name == "mf0"   then missile12 = k elseif
		   node.name == "mbl16" then launcher7 = k elseif
		   node.name == "mg1"   then missile13 = k elseif
		   node.name == "mg0"   then missile14 = k elseif
		   node.name == "mbr16" then launcher8 = k elseif
		   node.name == "mh1"   then missile15 = k elseif
		   node.name == "mh0"   then missile16 = k elseif
		   node.name == "mbl19" then launcher9 = k elseif
		   node.name == "mi1"   then missile17 = k elseif
		   node.name == "mi0"   then missile18 = k elseif
		   node.name == "mbr19" then launcher10 = k elseif
		   node.name == "mj1"   then missile19 = k elseif
		   node.name == "mj0"   then missile20 = k elseif
		   node.name == "mbl18" then launcher11 = k elseif
		   node.name == "mk1"   then missile21 = k elseif
		   node.name == "mk0"   then missile22 = k elseif
		   node.name == "mbr18" then launcher12 = k elseif
		   node.name == "ml1"   then missile23 = k elseif
		   node.name == "ml0"   then missile24 = k end
	end
	
	for s,b in pairs(v.data.beams) do
		if b.name == "missile1"    then missile1beam   = b.cid elseif
		   b.name == "missile1la"  then missile1labeam = b.cid elseif
		   b.name == "missile1lb"  then missile1lbbeam = b.cid elseif
		   b.name == "missile2"    then missile2beam   = b.cid elseif
		   b.name == "missile2la"  then missile2labeam = b.cid elseif
		   b.name == "missile2lb"  then missile2lbbeam = b.cid elseif
		   b.name == "missile3"    then missile3beam   = b.cid elseif
		   b.name == "missile3la"  then missile3labeam = b.cid elseif
		   b.name == "missile3lb"  then missile3lbbeam = b.cid elseif
		   b.name == "missile4"    then missile4beam   = b.cid elseif
		   b.name == "missile4la"  then missile4labeam = b.cid elseif
		   b.name == "missile4lb"  then missile4lbbeam = b.cid elseif
		   b.name == "missile5"    then missile5beam   = b.cid elseif
		   b.name == "missile5la"  then missile5labeam = b.cid elseif
		   b.name == "missile5lb"  then missile5lbbeam = b.cid elseif
		   b.name == "missile6"    then missile6beam   = b.cid elseif
		   b.name == "missile6la"  then missile6labeam = b.cid elseif
		   b.name == "missile6lb"  then missile6lbbeam = b.cid elseif
		   b.name == "missile7"    then missile7beam   = b.cid elseif
		   b.name == "missile7la"  then missile7labeam = b.cid elseif
		   b.name == "missile7lb"  then missile7lbbeam = b.cid elseif
		   b.name == "missile8"    then missile8beam   = b.cid elseif
		   b.name == "missile8la"  then missile8labeam = b.cid elseif
		   b.name == "missile8lb"  then missile8lbbeam = b.cid elseif
		   b.name == "missile9"    then missile9beam   = b.cid elseif
		   b.name == "missile9la"  then missile9labeam = b.cid elseif
		   b.name == "missile9lb"  then missile9lbbeam = b.cid elseif
		   b.name == "missile10"   then missile10beam  = b.cid elseif
		   b.name == "missile10la" then missile10labeam = b.cid elseif
		   b.name == "missile10lb" then missile10lbbeam = b.cid elseif
		   b.name == "missile11"   then missile11beam   = b.cid elseif
		   b.name == "missile11la" then missile11labeam = b.cid elseif
		   b.name == "missile11lb" then missile11lbbeam = b.cid elseif
		   b.name == "missile12"   then missile12beam   = b.cid elseif
		   b.name == "missile12la" then missile12labeam = b.cid elseif
		   b.name == "missile12lb" then missile12lbbeam = b.cid end
	end

end	

local function reset()
	init()
end

local function updateGFX(dt)
	local dirVector = obj:getDirectionVector()
	local dirVectorUp = obj:getDirectionVectorUp()
	
	electrics.values.heli_rollDeg = (dirVectorUp.x * -dirVector.y + dirVectorUp.y * dirVector.x) * 90
	electrics.values.heli_pitchDeg = dirVector.z * 90
	
	electrics.values.heli_throttle = min(max(electrics.values.heli_throttle + (electrics.values.throttle_change * dt * 0.5), 0), 1)
	electrics.values.keys_collective = min(max(electrics.values.keys_collective + (electrics.values.collective_change * dt * 0.5), 0), 1)
	
	if electrics.values.keys_collective ~= 0 then electrics.values.collective = electrics.values.keys_collective end
	if electrics.values.fuel < 0.1 then electrics.values.heli_fuelwarn = 1 else electrics.values.heli_fuelwarn = 0 end
	if electrics.values.oiltemp > 120 or electrics.values.watertemp > 110 then electrics.values.heli_engwarn = 1 else electrics.values.heli_engwarn = 0 end
	
	electrics.values.wheelspeed = electrics.values.airspeed
	electrics.values.clutch = electrics.values.collective
	electrics.values.brake = (electrics.values.rudder + 1) / 2 -- fix that annoying negative value error spat out by the pedals GUI

	electrics.values.throttle = electrics.values.heli_throttle
	electrics.values.heli_regenThrottle = (1 - electrics.values.throttle) --parkingbrake
	--electrics.values.regenStrength = 1
	electrics.values.heli_throttleToEngine = electrics.values.throttle

	if dh_fire < 0 then dh_fire = 0 end
	electrics.values.dh_fire = dh_fire
	
	if electrics.values.dh_trigger == 1 and delay == 0 and electrics.values.msight == 1 and missile1 ~= nil then dh_fire = dh_fire - 1 end
	if dh_fire == 1 then delay = delay + dt end
	if dh_fire == 2 then delay = delay + dt end
	if dh_fire == 3 then delay = delay + dt end
	if dh_fire == 4 then delay = delay + dt end
	if dh_fire == 5 then delay = delay + dt end
	if dh_fire == 6 then delay = delay + dt end
	if dh_fire == 7 then delay = delay + dt end
	if dh_fire == 8 then delay = delay + dt end
	if dh_fire == 9 then delay = delay + dt end
	if dh_fire == 10 then delay = delay + dt end
	if dh_fire == 11 then delay = delay + dt end
	if dh_fire == 0 then delay = delay + dt end
	if delay > 0.3 then delay = 0 end
	if electrics.values.dh_trigger == 0 then delay = 0 end
	
	if atimer == 0 and dh_fire == 11 then sounds.playSoundOnceAtNode("dh_missile", missile1, 3) obj:breakBeam(missile1labeam) obj:breakBeam(missile1lbbeam) dh_missile_1 = 1 end
	if dh_missile_1 == 1 then atimer = atimer + dt 
		if atimer > 0 and atimer < 0.15 and dh_missile_1 == 1 then electrics.values.dh_thrusta = 1 else electrics.values.dh_thrusta = nil end
		if atimer > 0.15 then obj:setNodeMass(missile1, 200) obj:setNodeMass(missile2, 300) end
		local avel = -obj:getNodeVelocity(missile1, missile2)
		local avel2 = -obj:getNodeVelocity(missile1, launcher1) + 15
		local isbroken1 = obj:beamIsBroken(missile1beam)
		if isbroken1 == false then obj:addParticleByNodesRelative(missile1, launcher1, avel2, 36, 0, 1) end
		if isbroken1 == true then dh_missile_1 = 0 end
		if isbroken1 == true and atimer > 0.15 then obj:addParticleByNodesRelative(missile1, missile2, avel, 31, 0, 5) sounds.playSoundOnceAtNode("dh_explode", missile1, 15) end
	end
	
	if btimer == 0 and dh_fire == 10 then sounds.playSoundOnceAtNode("dh_missile", missile3, 3) obj:breakBeam(missile2labeam) obj:breakBeam(missile2lbbeam) dh_missile_2 = 1 end
	if dh_missile_2 == 1 then btimer = btimer + dt
		if btimer > 0 and btimer < 0.15 and dh_missile_2 == 1 then electrics.values.dh_thrustb = 1 else electrics.values.dh_thrustb = nil end
		if btimer > 0.15 then obj:setNodeMass(missile3, 200) obj:setNodeMass(missile4, 300) end
		local bvel = -obj:getNodeVelocity(missile3, missile4)
		local bvel2 = -obj:getNodeVelocity(missile3, launcher2) + 15
		local isbroken2 = obj:beamIsBroken(missile2beam)
		if isbroken2 == false then obj:addParticleByNodesRelative(missile3, launcher2, bvel2, 36, 0, 1) end
		if isbroken2 == true then dh_missile_2 = 0 end
		if isbroken2 == true and btimer > 0.15 then obj:addParticleByNodesRelative(missile2, missile4, bvel, 31, 0, 5) sounds.playSoundOnceAtNode("dh_explode", missile3, 15) end
	end
	
	if ctimer == 0 and dh_fire == 9 then sounds.playSoundOnceAtNode("dh_missile", missile5, 3) obj:breakBeam(missile3labeam) obj:breakBeam(missile3lbbeam) dh_missile_3 = 1 end
	if dh_missile_3 == 1 then ctimer = ctimer + dt
		if ctimer > 0 and ctimer < 0.15 and dh_missile_3 == 1 then electrics.values.dh_thrustc = 1 else electrics.values.dh_thrustc = nil end
		if ctimer > 0.15 then obj:setNodeMass(missile5, 200) obj:setNodeMass(missile6, 300) end
		local cvel = -obj:getNodeVelocity(missile5, missile6)
		local cvel2 = -obj:getNodeVelocity(missile5, launcher3) + 15
		local isbroken3 = obj:beamIsBroken(missile3beam)
		if isbroken3 == false then obj:addParticleByNodesRelative(missile5, launcher3, cvel2, 36, 0, 1) end
		if isbroken3 == true then dh_missile_3 = 0 end
		if isbroken3 == true and ctimer > 0.15 then obj:addParticleByNodesRelative(missile5, missile5, cvel, 31, 0, 5) sounds.playSoundOnceAtNode("dh_explode", missile5, 15) end
	end	
	
	if dtimer == 0 and dh_fire == 8 then sounds.playSoundOnceAtNode("dh_missile", missile7, 3) obj:breakBeam(missile4labeam) obj:breakBeam(missile4lbbeam) dh_missile_4 = 1 end
	if dh_missile_4 == 1 then dtimer = dtimer + dt
		if dtimer > 0 and dtimer < 0.15 and dh_missile_4 == 1 then electrics.values.dh_thrustd = 1 else electrics.values.dh_thrustd = nil end
		if dtimer > 0.15 then obj:setNodeMass(missile7, 200) obj:setNodeMass(missile8, 300) end
		local dvel = -obj:getNodeVelocity(missile7, missile8)
		local dvel2 = -obj:getNodeVelocity(missile7, launcher4) + 15
		local isbroken4 = obj:beamIsBroken(missile4beam)
		if isbroken4 == false then obj:addParticleByNodesRelative(missile7, launcher4, dvel2, 36, 0, 1) end
		if isbroken4 == true then dh_missile_4 = 0 end
		if isbroken4 == true and dtimer > 0.15 then obj:addParticleByNodesRelative(missile7, missile8, dvel, 31, 0, 5) sounds.playSoundOnceAtNode("dh_explode", missile7, 15) end
	end	
	
	if etimer == 0 and dh_fire == 7 then sounds.playSoundOnceAtNode("dh_missile", missile9, 3) obj:breakBeam(missile5labeam) obj:breakBeam(missile5lbbeam) dh_missile_5 = 1 end
	if dh_missile_5 == 1 then etimer = etimer + dt
		if etimer > 0 and etimer < 0.15 and dh_missile_5 == 1 then electrics.values.dh_thruste = 1 else electrics.values.dh_thruste = nil end
		if etimer > 0.15 then obj:setNodeMass(missile9, 200) obj:setNodeMass(missile10, 300) end
		local evel = -obj:getNodeVelocity(missile9, missile10)
		local evel2 = -obj:getNodeVelocity(missile9, launcher5) + 15
		local isbroken5 = obj:beamIsBroken(missile5beam)
		if isbroken5 == false then obj:addParticleByNodesRelative(missile9, launcher5, evel2, 36, 0, 1) end
		if isbroken5 == true then dh_missile_5 = 0 end
		if isbroken5 == true and etimer > 0.15 then obj:addParticleByNodesRelative(missile9, missile10, evel, 31, 0, 5) sounds.playSoundOnceAtNode("dh_explode", missile9, 15) end
	end	
	
	if ftimer == 0 and dh_fire == 6 then sounds.playSoundOnceAtNode("dh_missile", missile11, 3) obj:breakBeam(missile6labeam) obj:breakBeam(missile6lbbeam) dh_missile_6 = 1 end
	if dh_missile_6 == 1 then ftimer = ftimer + dt
		if ftimer > 0 and ftimer < 0.15 and dh_missile_6 == 1 then electrics.values.dh_thrustf = 1 else electrics.values.dh_thrustf = nil end
		if ftimer > 0.15 then obj:setNodeMass(missile11, 200) obj:setNodeMass(missile12, 300) end
		local fvel = -obj:getNodeVelocity(missile11, missile12)
		local fvel2 = -obj:getNodeVelocity(missile11, launcher6) + 15
		local isbroken6 = obj:beamIsBroken(missile6beam)
		if isbroken6 == false then obj:addParticleByNodesRelative(missile11, launcher6, fvel2, 36, 0, 1) end
		if isbroken6 == true then dh_missile_6 = 0 end
		if isbroken6 == true and ftimer > 0.15 then obj:addParticleByNodesRelative(missile11, missile12, fvel, 31, 0, 5) sounds.playSoundOnceAtNode("dh_explode", missile11, 15) end
	end	
	
	if gtimer == 0 and dh_fire == 5 then sounds.playSoundOnceAtNode("dh_missile", missile13, 3) obj:breakBeam(missile7labeam) obj:breakBeam(missile7lbbeam) dh_missile_7 = 1 end
	if dh_missile_7 == 1 then gtimer = gtimer + dt
		if gtimer > 0 and gtimer < 0.15 and dh_missile_7 == 1 then electrics.values.dh_thrustg = 1 else electrics.values.dh_thrustg = nil end
		if gtimer > 0.15 then obj:setNodeMass(missile13, 200) obj:setNodeMass(missile14, 300) end
		local gvel = -obj:getNodeVelocity(missile13, missile14)
		local gvel2 = -obj:getNodeVelocity(missile13, launcher7) + 15
		local isbroken7 = obj:beamIsBroken(missile7beam)
		if isbroken7 == false then obj:addParticleByNodesRelative(missile13, launcher7, gvel2, 36, 0, 1) end
		if isbroken7 == true then dh_missile_7 = 0 end
		if isbroken7 == true and gtimer > 0.15 then obj:addParticleByNodesRelative(missile13, missile14, gvel, 31, 0, 5) sounds.playSoundOnceAtNode("dh_explode", missile13, 15) end
	end	
	
	if htimer == 0 and dh_fire == 4 then sounds.playSoundOnceAtNode("dh_missile", missile15, 3) obj:breakBeam(missile8labeam) obj:breakBeam(missile8lbbeam) dh_missile_8 = 1 end
	if dh_missile_8 == 1 then htimer = htimer + dt
		if htimer > 0 and htimer < 0.15 and dh_missile_8 == 1 then electrics.values.dh_thrusth = 1 else electrics.values.dh_thrusth = nil end
		if htimer > 0.15 then obj:setNodeMass(missile15, 200) obj:setNodeMass(missile16, 300) end
		local hvel = -obj:getNodeVelocity(missile15, missile16)
		local hvel2 = -obj:getNodeVelocity(missile15, launcher8) + 15
		local isbroken8 = obj:beamIsBroken(missile8beam)
		if isbroken8 == false then obj:addParticleByNodesRelative(missile15, launcher8, hvel2, 36, 0, 1) end
		if isbroken8 == true then dh_missile_8 = 0 end
		if isbroken8 == true and htimer > 0.15 then obj:addParticleByNodesRelative(missile15, missile16, hvel, 31, 0, 5) sounds.playSoundOnceAtNode("dh_explode", missile15, 15) end
	end	
	
	if itimer == 0 and dh_fire == 3 then sounds.playSoundOnceAtNode("dh_missile", missile17, 3) obj:breakBeam(missile9labeam) obj:breakBeam(missile9lbbeam) dh_missile_9 = 1 end
	if dh_missile_9 == 1 then itimer = itimer + dt
		if itimer > 0 and itimer < 0.15 and dh_missile_9 == 1 then electrics.values.dh_thrusti = 1 else electrics.values.dh_thrusti = nil end
		if itimer > 0.15 then obj:setNodeMass(missile17, 200) obj:setNodeMass(missile18, 300) end
		local ivel = -obj:getNodeVelocity(missile17, missile18)
		local ivel2 = -obj:getNodeVelocity(missile17, launcher9) + 15
		local isbroken9 = obj:beamIsBroken(missile9beam)
		if isbroken9 == false then obj:addParticleByNodesRelative(missile17, launcher9, ivel2, 36, 0, 1) end
		if isbroken9 == true then dh_missile_9 = 0 end
		if isbroken9 == true and itimer > 0.15 then obj:addParticleByNodesRelative(missile17, missile18, ivel, 31, 0, 5) sounds.playSoundOnceAtNode("dh_explode", missile17, 15) end
	end	
	
	if jtimer == 0 and dh_fire == 2 then sounds.playSoundOnceAtNode("dh_missile", missile19, 3) obj:breakBeam(missile10labeam) obj:breakBeam(missile10lbbeam) dh_missile_10 = 1 end
	if dh_missile_10 == 1 then jtimer = jtimer + dt
		if jtimer > 0 and jtimer < 0.15 and dh_missile_10 == 1 then electrics.values.dh_thrustj = 1 else electrics.values.dh_thrustj = nil end
		if jtimer > 0.15 then obj:setNodeMass(missile19, 200) obj:setNodeMass(missile20, 300) end
		local jvel = -obj:getNodeVelocity(missile19, missile20)
		local jvel2 = -obj:getNodeVelocity(missile19, launcher10) + 15
		local isbroken10 = obj:beamIsBroken(missile10beam)
		if isbroken10 == false then obj:addParticleByNodesRelative(missile19, launcher10, jvel2, 36, 0, 1) end
		if isbroken10 == true then dh_missile_10 = 0 end
		if isbroken10 == true and jtimer > 0.15 then obj:addParticleByNodesRelative(missile19, missile20, jvel, 31, 0, 5) sounds.playSoundOnceAtNode("dh_explode", missile19, 15) end
	end	
	
	if ktimer == 0 and dh_fire == 1 then sounds.playSoundOnceAtNode("dh_missile", missile21, 3) obj:breakBeam(missile11labeam) obj:breakBeam(missile11lbbeam) dh_missile_11 = 1 end
	if dh_missile_11 == 1 then ktimer = ktimer + dt
		if ktimer > 0 and ktimer < 0.15 and dh_missile_11 == 1 then electrics.values.dh_thrustk = 1 else electrics.values.dh_thrustk = nil end
		if ktimer > 0.15 then obj:setNodeMass(missile21, 200) obj:setNodeMass(missile22, 300) end
		local kvel = -obj:getNodeVelocity(missile21, missile22)
		local kvel2 = -obj:getNodeVelocity(missile21, launcher11) + 15
		local isbroken11 = obj:beamIsBroken(missile11beam)
		if isbroken11 == false then obj:addParticleByNodesRelative(missile21, launcher11, kvel2, 36, 0, 1) end
		if isbroken11 == true then dh_missile_11 = 0 end
		if isbroken11 == true and ktimer > 0.15 then obj:addParticleByNodesRelative(missile21, missile22, kvel, 31, 0, 5) sounds.playSoundOnceAtNode("dh_explode", missile21, 15) end
	end	
	
	if ltimer == 0 and dh_fire == 0 then sounds.playSoundOnceAtNode("dh_missile", missile23, 3) obj:breakBeam(missile12labeam) obj:breakBeam(missile12lbbeam) dh_missile_12 = 1 end
	if dh_missile_12 == 1 then ltimer = ltimer + dt
		if ltimer > 0 and ltimer < 0.15 and dh_missile_12 == 1 then electrics.values.dh_thrustl = 1 else electrics.values.dh_thrustl = nil end
		if ltimer > 0.15 then obj:setNodeMass(missile23, 200) obj:setNodeMass(missile24, 300) end
		local lvel = -obj:getNodeVelocity(missile23, missile24)
		local lvel2 = -obj:getNodeVelocity(missile23, launcher12) + 15
		local isbroken12 = obj:beamIsBroken(missile12beam)
		if isbroken12 == false then obj:addParticleByNodesRelative(missile23, launcher12, lvel2, 36, 0, 1) end
		if isbroken12 == true then dh_missile_12 = 0 end
		if isbroken12 == true and ltimer > 0.15 then obj:addParticleByNodesRelative(missile23, missile24, lvel, 31, 0, 5) sounds.playSoundOnceAtNode("dh_explode", missile23, 15) end
	end	
end

M.onInit = init
M.onReset = init
M.updateGFX = updateGFX

return M