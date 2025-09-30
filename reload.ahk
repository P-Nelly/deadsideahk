#Requires AutoHotkey v2.0
#SingleInstance Force

global reloadcount := 10

T:: {
	Loop reloadcount {
		Send('{r}')
		Send('{Shift}')
	}
}

~!F9:: {
	ExitApp
}
