#Requires AutoHotkey v2.0
#SingleInstance Force
SendMode "Input"

; Replace "End" key with new key
; 1000 = 1s speed
Delay := 1000
SlotSize := 85
Columns := 7
Rows := 8

End:: {
    Loop Rows {
        ; Odd rows go right, even rows go left
        direction := Mod(A_Index, 2) ? 1 : -1
        Loop Columns {
            MouseMove direction * SlotSize, 0, 0, "R"
            Sleep Delay
        }
        if (A_Index < Rows) {
            MouseMove 0, SlotSize, 0, "R"
            Sleep Delay
        }
    }
}
