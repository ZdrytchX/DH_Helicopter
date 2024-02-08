-- This Source Code Form is subject to the terms of the bCDDL, v. 1.1.
-- If a copy of the bCDDL was not distributed with this
-- file, You can obtain one at http://beamng.com/bCDDL-1.1.txt

local M = {}
M.type = "auxilliary"
M.relevantDevice = nil

local htmlTexture = require("htmlTexture")
local gaugesScreenName = nil
local htmlPath = nil
local updateTimer = 0
local updateFPS = 30
local invFPS = 1 / updateFPS

local function updateGFX(dt)
  updateTimer = updateTimer + dt
  if updateTimer > invFPS then
    local data = {}
    local wheelspeed = electrics.values.dh_fire or 0
    data.speed = wheelspeed
    --dump(data)
	htmlTexture.call(gaugesScreenName, "updateData", data)
    updateTimer = 0
  end
end

local function init(jbeamData)
  gaugesScreenName = jbeamData.materialName or gaugesScreenName
  htmlPath = jbeamData.htmlPath
  local unitType = jbeamData.unitType or "metric"
  local width = jbeamData.textureWidth or 512
  local height = jbeamData.textureHeight or 256
  if htmlPath then
    htmlTexture.create(gaugesScreenName, htmlPath, width, height, updateFPS, 'automatic')
    htmlTexture.call(gaugesScreenName, "setUnits", {unitType = unitType})
  else
    log("E", "heliGauges", "Got no html path for the texture, can't display anything...")
    M.updateGFX = nop
  end
end

M.init = init
M.updateGFX = updateGFX

return M