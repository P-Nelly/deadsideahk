#Requires AutoHotkey v2.0
#SingleInstance Force

F8:: {
	Static Toggle := false
	Toggle := !Toggle
	if Toggle
		SetTimer(Click, 40)
	else
		SetTimer(Click, 0)
}

~!F9:: {
	ExitApp
}
