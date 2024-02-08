-- This Source Code Form is subject to the terms of the bCDDL, v. 1.1.
-- If a copy of the bCDDL was not distributed with this
-- file, You can obtain one at http://beamng.com/bCDDL-1.1.txt

local M = {}
--Mandatory controller parameters
M.type = "auxilliary"
M.relevantDevice = nil
-----

local min = math.min
local max = math.max
local floor = math.floor
local abs = math.abs

local trimSpeed = 0
local trimModes = {"rudder"}
local lastTrimInputs = {elevator = 0, aileron = 0, rudder = 0}
local lastTrimValues = {elevator = 0, aileron = 0, rudder = 0}
local currentTrimMode = nil
local currentTrimModeIndex = 1
local trimming = nil


local function updateGFX(dt)
  local rudder = input.rudder or 0
  local aileron = input.aileron or 0
  local elevator = input.elevator or 0

  trimming[currentTrimMode] = min(max(trimming[currentTrimMode] + (input.trimChange or 0) * dt * trimSpeed, -1), 1)

  trimming.rudder = input.trimRudder ~= lastTrimInputs.rudder and input.trimRudder or trimming.rudder
  trimming.elevator = input.trimElevator ~= lastTrimInputs.elevator and input.trimElevator or trimming.elevator
  trimming.aileron = input.trimAileron ~= lastTrimInputs.aileron and input.trimAileron or trimming.aileron

  
  electrics.values.rudder = rudder + trimming.rudder
  electrics.values.aileron = aileron + trimming.aileron
  electrics.values.elevator = elevator + trimming.elevator
  

  for k,v in pairs(trimming) do
    if abs(v - lastTrimValues[k]) > 0.005 then
      gui.message(string.format("Trim %s: %d%%", k, v * 100), 1, "trimvalue"..k)
      lastTrimValues[k] = v
    end
  end

end

local function toggleTrimMode()
  currentTrimModeIndex = currentTrimModeIndex + 1
  if currentTrimModeIndex > #trimModes then
    currentTrimModeIndex = 1
  end
  currentTrimMode = trimModes[currentTrimModeIndex]

  gui.message(string.format("Trim mode: %s", currentTrimMode), 5, "trimmode")
end

local function init(jbeamData)
  electrics.values.rudder = 0
  electrics.values.aileron = 0
  electrics.values.elevator = 0
  
  lastTrimInputs = {elevator = 0, aileron = 0, rudder = 0}

  currentTrimModeIndex = 1
  currentTrimMode = trimModes[currentTrimModeIndex]
  trimming = {
    rudder = jbeamData.rudderTrimmingStart or 0,
    aileron = jbeamData.aileronTrimmingStart or 0,
    elevator = jbeamData.elevatorTrimmingStart or 0
  }
  lastTrimValues = {elevator = trimming.elevator, aileron = trimming.aileron, rudder = trimming.rudder}

  trimSpeed = jbeamData.trimSpeed or 0.05
  
end

M.init = init
M.updateGFX = updateGFX
M.toggleTrimMode = toggleTrimMode

return M