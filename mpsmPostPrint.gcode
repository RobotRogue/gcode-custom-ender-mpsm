; Print Done, Shutdown Time!

M117 Doot doot we done!

M104 S0             ; Turn off hotend/extruder heater
M140 S0             ; Turn off bed heater

G1 E-2 F300         ; Retract the filament a bit before lifting the nozzle to release some of the pressure
G1 X100             ; Move x axis to the right (to aid in Atomic Pull)
G91                 ; Set to relative positioning
G1 Z10              ; Raise Z 10mm from current position
M84                 ; Disable motors

G4 S360             ; Keep fan running for 360 seconds after print
M107                ; Turn off fan
