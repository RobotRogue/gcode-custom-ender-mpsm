; Ender 3 Custom End G-code
; Customized by RobotRogue
; Now moves X-axis to far right instead
; Now only moves Z-axis up 10mm (Handles taller prints)
G4                                              ; Wait
M220 S100                                       ; Reset Speed factor override percentage to default (100%)
M221 S100                                       ; Reset Extrude factor override percentage to default (100%)
G91                                             ; Set coordinates to relative
G1 F1800 E-5                                    ; Retract filament 5 mm to prevent oozing
G1 F3000 Z10                                    ; Move Z Axis up 10 mm to allow filament ooze freely
G90                                             ; Set coordinates to absolute
G1 X{machine_width} Y{machine_depth} F1000      ; Move Heat Bed to the front for easy print removal
M84                                             ; Disable stepper motors
; Plays A Little Tune To Alert Print Is Finished
M300 S440 P200
M300 S660 P250
M300 S880 P300
M300 S660 P250
M300 S440 P200
M300 S660 P250
M300 S660 P300
; End of custom end GCode
