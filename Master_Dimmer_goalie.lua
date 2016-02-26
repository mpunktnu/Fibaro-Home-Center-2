--[[
%% properties
372 value
%% globals
--]]

-- Virtual Device ID, needed. Also add triggers above!
VDID = 374

-- Save the device ID that triggered the scene.
call = fibaro:getSourceTrigger()

if call.type == "property" then
  caller = call['deviceID']

-- If not triggered by device property, should not run
else fibaro:abort()
end

-- Save dim value of caller
dimValue = fibaro:getValue(caller, "value")

-- Set dim value in Virtual Device (Master dimmer)
fibaro:call(VDID, 'setSlider', dimValue)

-- Done!
