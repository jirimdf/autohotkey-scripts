#NoEnv  
#SingleInstance Force  
SendMode Input  

; Replace "End" key with new key
; 1000 = 1s speed


End::
    Loop, 3  ; Opakujeme následující blok kódu 3krát
    {
        Loop, 7
        {
            MouseMove, 85, 0, 0, R
            Sleep, 1000
        }

        MouseMove, 0, 85, 0, R
        Sleep, 1000

        Loop, 7
        {
            MouseMove, -85, 0, 0, R
            Sleep, 1000
        }

        MouseMove, 0, 85, 0, R
        Sleep, 1000
    }
    
    Loop, 7
    {
        MouseMove, 85, 0, 0, R
        Sleep, 1000
    }

    MouseMove, 0, 85, 0, R
    Sleep, 1000

    Loop, 7
    {
        MouseMove, -85, 0, 0, R
        Sleep, 1000
    }
    
    return