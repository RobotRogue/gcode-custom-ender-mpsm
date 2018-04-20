; MISC GCODE STUFF:

M501                    ; Show current settings:
M502                    ; Recall Firmware defaults
M500                    ; Save changed settings to EEPROM

; TO PID Autotune:
; HOTEND:
M106 S255               ; turn on hotend fan to 100%
M303 S215 C15           ; Begin autotune to 215c, 15 cycles
M500                    ; save the generated PID values to EEPROM

; HEATED BED:
M303 E-1 S55 C5         ; Begin autotune to 55c, 5 cycles
M500                    ; save the generated PID values to EEPROM
