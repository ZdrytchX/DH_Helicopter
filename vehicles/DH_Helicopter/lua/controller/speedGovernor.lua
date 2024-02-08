--Authored by ZdrytchX as a mod for DH Super Gnat by Darren9
--basically this is supposed to smoothly reduce throttle input below the redline rather than relying on built-in redline controller
--TODO (this file does nothing atm)

--[[
local M = {}

M.outputPorts = {[1] = true}
M.deviceCategories = {clutchlike = true, clutch = true}
M.requiredExternalInertiaOutputs = {1}

local max = math.max
local min = math.min
local abs = math.abs

local constants = {rpmToAV = 0.104719755, avToRPM = 9.549296596425384}

local DHController = {
	RedlineBuffer = 50,
	EconomyRPM = 3600,
	EconomyThrottle = ,
	ActiveThrottle = 

}

M.engineThrottle = 0, --actual engine throttle
M.throttle = 0, --user input
M.rpm
--]]

--[=[
local gearbox = nil
local engine = nil
local torqueConverter = nil

local sharedFunctions = nil
local gearboxAvailableLogic = nil
local gearboxLogic = nil

M.gearboxHandling = nil
M.timer = nil
M.timerConstants = nil
M.inputValues = nil
M.shiftPreventionData = nil
M.shiftBehavior = nil
M.smoothedValues = nil

M.currentGearIndex = 0
M.maxGearIndex = 1
M.minGearIndex = -1
M.throttle = 0
M.brake = 0
M.clutchRatio = 1
M.shiftingAggression = 0
M.throttleInput = 0
M.isArcadeSwitched = false
M.isSportModeActive = false

M.smoothedAvgAVInput = 0
M.rpm = 0
M.idleRPM = 0
M.maxRPM = 0

M.engineThrottle = 0
M.engineLoad = 0
M.engineTorque = 0
M.flywheelTorque = 0
M.gearboxTorque = 0

M.ignition = true
M.isEngineRunning = 0

M.oilTemp = 0
M.waterTemp = 0
M.checkEngine = false

M.energyStorages = {}
--]=]

--[=[

    "controller": [
        ["fileName"],
        ["vehicleController", {}],
    ],
    
    "vehicleController": {
        "calculateOptimalLoadShiftPoints": true,
        "transmissionGearChangeDelay":2,
        "gearboxDecisionSmoothingUp":2,
        "gearboxDecisionSmoothingDown":2,
        "aggressionSmoothingUp":1,
        "aggressionSmoothingDown":0.5,
        "aggressionHoldOffThrottleDelay":1.75,
        "lowShiftDownRPM":1000,
        "lowShiftUpRPM":1800,
    },
--]=]