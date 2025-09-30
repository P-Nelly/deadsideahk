#Requires AutoHotkey v2.0+
#SingleInstance Force

global IsInputBlocked := false
global ZoomOutScrolls := 20

~RButton & WheelDown:: {
	CenterCursor()
	SendInput("^!{WheelDown}")
}

~RButton & WheelUp:: {
	CenterCursor()
	SendInput("^!{WheelUp}")
}

~RButton Up:: {
	if (IsInputBlocked) {
		global IsInputBlocked := false
		BlockInput("MouseMoveOff")
		Loop ZoomOutScrolls {
			SendInput("^!{WheelDown}")
		}
	}
}

CenterCursor() {
	global IsInputBlocked := true
	BlockInput("MouseMove")
	CoordMode("Mouse", "Screen")
	x := A_ScreenWidth / 2
	y := A_ScreenHeight / 2
	DllCall("SetCursorPos", "int", x, "int", y)
}

~!F9:: {
	ExitApp
}
