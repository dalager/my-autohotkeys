#Requires AutoHotkey v2.0
; #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode "Input"  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir A_ScriptDir  ; Ensures a consistent starting directory.

;; Brug CAPS LOCK til at skifte mellem sprog
CapsLock::  ; Intercept Caps Lock key press
{
    ; send left ctrl + left shift
    Send("{LControl Down}{LShift Down}{LShift Up}{LControl Up}")
    return
}

;; WIN + N to open and activate notepad
#n::  ; Intercept Win + N key press
{
    if WinExist("ahk_class Notepad")
        WinActivate  ; Activate the window found above
    else {
        Run "notepad"  ; Open a new Notepad window
        WinWait "- Notepad"
        WinActivate
        WinMove 0, 0, A_ScreenWidth / 4, A_ScreenHeight / 2
    }
}
