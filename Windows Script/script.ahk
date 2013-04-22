$F12::  ; F12 为热键
Loop
{
    if not GetKeyState("F12", "P")
        break
	; Code Start
	WinWait, Foxit PDF Editor - [剑桥雅思.pdf], 
	IfWinNotActive, Foxit PDF Editor - [剑桥雅思.pdf], , WinActivate, Foxit PDF Editor - [剑桥雅思.pdf], 
	WinWaitActive, Foxit PDF Editor - [剑桥雅思.pdf], 
	MouseClick, left,  925,  409
	Send, {DEL}
	; Code End
}