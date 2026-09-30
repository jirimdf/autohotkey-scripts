#Requires AutoHotkey v2.0
#SingleInstance Force
SendMode "Input"

Key := "g"
Interval := 5000

MyGui := Gui(, "AutoHotkey GUI")
StartBtn := MyGui.Add("Button", "w100 h30", "Start")
StopBtn := MyGui.Add("Button", "w100 h30", "Stop")
StartBtn.OnEvent("Click", Start)
StopBtn.OnEvent("Click", (*) => ExitApp())
MyGui.OnEvent("Close", (*) => ExitApp())
MyGui.OnEvent("Escape", (*) => ExitApp())
MyGui.Show("w200 h100")

Start(*) {
    StartBtn.Enabled := false
    PressKey()
    SetTimer PressKey, Interval
}

PressKey() {
    Send Key
}

; Esc stops the loop, the key still works normally in other windows
~Esc:: {
    SetTimer PressKey, 0
    StartBtn.Enabled := true
}
