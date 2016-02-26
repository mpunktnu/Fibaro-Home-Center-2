# Fibaro Home Center 2 Lua Scenes / Virtual Devices
Here we keep scenes written in Lua, for Fibaro Home Center 2.

# Details

## Master_Dimmer.vfib
This is a virtual device which can control all dimmers added to the Home Center 2.
It is also possible to tweak it to only dim a certain room or a set of devices. Just loop over a different set.

## Master_Dimmer_goalie.lua
This is a Lua scene for HC2 which is triggered by a set of dimmers and sets the slider of another device.
If used together with Master Dimmer (above), the dimmers controlled by Master Dimmer can in turn also control it.