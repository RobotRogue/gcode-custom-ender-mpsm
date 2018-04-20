; Print Done, Shutdown Time!

M117 Doot doot we done!

M104 S0 ; turn off hotend/extruder heater
M140 S0 ; turn off bed heater

G91 ; set to relative positioning
G1 E-2 F300 ; retract the filament a bit before lifting the nozzle to release some of the pressure
G1 Z10 ; raise Z 10mm from current position
M84 ; disable motors

G4 S360 ; keep fan running for 360 seconds after print
M107 ; turn off fan