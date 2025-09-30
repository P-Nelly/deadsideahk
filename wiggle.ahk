#Requires AutoHotkey v2.0
#SingleInstance Force
#MaxThreadsPerHotkey 2

global WiggleAmount := 800

!w:: {
	static Toggle := false
	Toggle := !Toggle
	if Toggle {
		Loop {
			if !Toggle {
				Break
			}

			Send('{w down}')
			Sleep(WiggleAmount)
			Send('{w up}')

			Send('{d down}')
			Sleep(WiggleAmount)
			Send('{d up}')

			Send('{s down}')
			Sleep(WiggleAmount)
			Send('{s up}')

			Send('{a down}')
			Sleep(WiggleAmount)
			Send('{a up}')

		}
	}
}

~!F9:: {
	ExitApp
}
