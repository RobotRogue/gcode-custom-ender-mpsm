; Tutorial here: https://all3dp.com/g-code-tutorial-3d-printer-gcode-commands/

G21                 ; Set metric values
G90                 ; Use absolute positioning for axis movement
M82                 ; Use absolute mode for extruder
M104 S190           ; Start heating the hotend to 190 degrees Celsius
M140 S55            ; Start heating the bed to 55 degrees Celsius
G28                 ; Home all axes while the extruder is still heating
M109 S205           ; Wait for hotend to reach 205 degrees before continuing priming routine
M190 S60            ; Wait for bed to reach 60 degrees before continuing priming routine
M107                ; Start with the fan off

G92 E0              ; Reset the extruder to 0
G0 Z5 E5 F500       ; Move up and prime the nozzle (extrude 5mm filament, 500mm/min)
G1 Y2               ; Move bed a touch forward
G28 Z0              ; Reset Z to home position

G1 Y60 E8 F500      ; Draw a priming/wiping line to the rear (extrude 8mm filament, 500mm/min)
G1 X2               ; Move a little closer to the print area
G1 Y10 E16 F500     ; Draw more priming/wiping (extrude 16mm filament, 500mm/s)
G1 E15 F250         ; Small retract
G92 E0              ; Zero the extruder

M117 Printing...