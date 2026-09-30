#Requires AutoHotkey v2.0
#SingleInstance Force
SendMode "Input"

Running := false

MyGui := Gui("+AlwaysOnTop", "My Script")
MyGui.BackColor := "000000"
MyGui.SetFont("s12", "Arial")
MyGui.Add("Button", "x25 y25 w100 h40", "Start").OnEvent("Click", ToggleLoop)
MyGui.Add("Button", "x135 y25 w100 h40", "Pause").OnEvent("Click", ToggleLoop)
MyGui.Add("Button", "x245 y25 w100 h40", "Stop").OnEvent("Click", StopLoop)
MyGui.Add("Button", "x360 y25 w25 h25", "X").OnEvent("Click", (*) => ExitApp())
MyGui.OnEvent("Close", (*) => ExitApp())
MyGui.Show("x100 y100 h100 w400")

End::ToggleLoop()

ToggleLoop(*) {
    global Running := !Running
    if Running
        SetTimer RunLoop, -1
}

StopLoop(*) {
    global Running := false
}

RunLoop() {
    while Running {
        Send "{Alt down}{Tab}{Alt up}"
        Sleep 500
        Send "g"
        Sleep 5000
    }
}
