; Tutorial here: https://all3dp.com/g-code-tutorial-3d-printer-gcode-commands/

G21                 ; Set metric values
G90                 ; Use absolute positioning
M82                 ; Set extruder to absolute mode
M107                ; Start with the fan off

G28                 ; Reset to home position
G92 E0              ; Reset the extruder to 0
G0 Z5 E5 F500       ; Move up and prime the nozzle
G28                 ; Reset to home position
G1 Y2               ; Move bed a touch forward
G1 Y60 E8 F500      ; Draw a priming/wiping line to the rear
G1 X2               ; Move a little closer to the print area
G1 Y10 E16 F500     ; draw more priming/wiping
G1 E15 F250         ; Small retract
G92 E0              ; Zero the extruder

M117 Printing...