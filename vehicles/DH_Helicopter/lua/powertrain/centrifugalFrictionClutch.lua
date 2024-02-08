-- This Source Code Form is subject to the terms of the bCDDL, v. 1.1.
-- If a copy of the bCDDL was not distributed with this
-- file, You can obtain one at http://beamng.com/bCDDL-1.1.txt

local M = {}

M.outputPorts = {[1] = true}
M.deviceCategories = {clutchlike = true, clutch = true}
M.requiredExternalInertiaOutputs = {1}

local max = math.max
local min = math.min

local avToRPM = 9.549296596425384

local function updateVelocity(device, dt)
  device.inputAV = device.parent.outputAV1
end

local function updateTorque(device, dt)

  local avDiff = device.inputAV - device.outputAV1

  if (not device.clutchWelded) then
  -- If the output is slower than the input, engage clutch proportianally to rpm, else disengage amd freewheel
	  if(avDiff > 0) then
		device.clutchRatio = min(max((device.inputAV-device.engageStartAV)/device.engagementAV, 0),1)
	  else
		device.clutchRatio = 0
	  end
  else
	device.clutchRatio = device.clutchWelded
  end

  device.clutchAngle = min(max(device.clutchAngle + avDiff * dt * device.clutchStiffness, -device.maxClutchAngle), device.maxClutchAngle)
  device.torqueDiff = (min(max(device.clutchAngle * device.lockSpring + device.lockDamp * avDiff, -device.lockTorque), device.lockTorque)) * device.clutchRatio
  device.outputTorque1 = device.torqueDiff
end

local function selectUpdates(device)
  device.velocityUpdate = updateVelocity
  device.torqueUpdate = updateTorque
end

local function validate(device)
  if not device.parent.deviceCategories.engine then
    log("E", "centrifugalFrictionClutch.validate", "Parent device is not an engine device...")
    log("E", "centrifugalFrictionClutch.validate", "Actual parent:")
    log("E", "centrifugalFrictionClutch.validate", powertrain.dumpsDeviceData(device.parent))
    return false
  end

  device.lockTorque = device.jbeamData.lockTorque or (device.parent.torqueData.maxTorque + device.parent.maxRPM * device.parent.inertia * math.pi / 30)
  return true
end

local function calculateInertia(device)
  local outputInertia = 0
  local cumulativeGearRatio = 1
  local maxCumulativeGearRatio = 1
  if device.children and #device.children > 0 then
    local child = device.children[1]
    outputInertia = child.cumulativeInertia
    cumulativeGearRatio = child.cumulativeGearRatio
    maxCumulativeGearRatio = child.maxCumulativeGearRatio
  end

  device.cumulativeInertia = min(outputInertia, device.parent.inertia * 0.5)
  device.lockSpring = device.jbeamData.lockSpring or (powertrain.stabilityCoef * powertrain.stabilityCoef * device.cumulativeInertia) --Nm/rad
  device.lockDamp = device.lockSpring / 1000
  device.maxClutchAngle = device.lockTorque / device.lockSpring --rad

  device.cumulativeGearRatio = cumulativeGearRatio
  device.maxCumulativeGearRatio = maxCumulativeGearRatio
end
--[[
local function applyRegenThrottle(device)
	device.positiveThrottle = electrics.values.heli_throttle

	--this stuff is specific for electric motors
	if device.regenActive then
		local throttleOffset = device.throttleNeutralPoint
		-- while this is ripped from the official code, the official code is buggy in that it always multiplies the floored result by 0.25
		-- ideally it should be based on RPM and not airspeed, need to include "device" table for rotor RPM data
		--local throttleOffset = throttleOffset  -- * max(1, electrics.values.wheelspeed / device.regenSlowSpeedDropOff)
		device.positiveThrottle = max(0, (electrics.values.heli_throttle - throttleOffset) / (1 - throttleOffset))
		device.negativeThrottle = max(0, min(1, (throttleOffset - electrics.values.heli_throttle) / throttleOffset))
		electrics.values.regenThrottle = device.negativeThrottle
	end
	--deliver power to the engine
	electrics.values.heli_throttleToEngine = device.positiveThrottle
end
--]]

local function new(jbeamData)
  local device = {
    deviceCategories = shallowcopy(M.deviceCategories),
    requiredExternalInertiaOutputs = shallowcopy(M.requiredExternalInertiaOutputs),
    outputPorts = shallowcopy(M.outputPorts),

    name = jbeamData.name,
    type = jbeamData.type,
    inputName = jbeamData.inputName,
    inputIndex = jbeamData.inputIndex,
    gearRatio = 1,
    additionalEngineInertia = jbeamData.additionalEngineInertia or 0,
    cumulativeInertia = 1,
    cumulativeGearRatio = 1,
    maxCumulativeGearRatio = 1,
    isPhysicallyDisconnected = jbeamData.isPhysicallyDisconnected,

    outputAV1 = 0,
    inputAV = 0,
    outputTorque1 = 0,
    clutchAngle = 0,
    clutchRatio = 1,
    torqueDiff = 0,
	

	clutchWelded = jbeamData.clutchWelded or nil,

	--special case for electric motors
	regenActive  = jbeamData.regenActive or nil,
    engageStartAV = jbeamData.engageStartRPM or 1000,
    engagementAV  = jbeamData.engagementRPM or 1000,
	throttleNeutralPoint = jbeamData.regenThrottleNeutralPoint or 0.25,--default 0.15
	regenSlowSpeedDropOff = jbeamData.regenSlowSpeedDropOff or 2.5,--default 2.5
	positiveThrottle = jbeamData.regenThrottle or 0.5,--nil
	negativeThrottle = 1,--test

    validate = validate,
    calculateInertia = calculateInertia,
  }

  device.jbeamData = jbeamData

  device.clutchStiffness = jbeamData.clutchStiffness or 1

  device.engageStartAV = device.engageStartAV/avToRPM -- convert separately or the default thing doesnt work :|
  device.engagementAV = device.engagementAV/avToRPM

  selectUpdates(device)

  return device
end

M.new = new

return M
