; --------------------------------------------------------------
; Emulate OSX keymap layout on Windows
; --------------------------------------------------------------
 
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance force

;GroupAdd, ahk_class SunAwtFrame
;GroupAdd, ahk_class SunAwtDialog
return
 
; --------------------------------------------------------------
; NOTES
; --------------------------------------------------------------
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN

; --------------------------------------------------------------
; MAIN
; --------------------------------------------------------------
; [TODO] Remap win => Lctrl and Lctrl => win. Currently with powertoys

; --------------------------------------------------------------
; WIN
; --------------------------------------------------------------
; [TODO] Win shortcuts: Win+L, Win+D, etc
; [TODO] Windows zones (using spectacles in macos, ie: cmd+alt+arrows and cmd+alt+f to maximize). Currently this remap is on powertoys

; --------------------------------------------------------------
; Switching between windows
; --------------------------------------------------------------
LCtrl & Tab::AltTab

; --------------------------------------------------------------
; mimics command-q and command-w
; --------------------------------------------------------------
^q::Send !{F4}
^h::WinMinimize,a

; --------------------------------------------------------------
; command-delete deletes whole line
; --------------------------------------------------------------
^BS::Send {LShift down}{Home}{LShift Up}{Del}

; --------------------------------------------------------------
; remaps alt-arrow and command-arrow
; --------------------------------------------------------------
^Up::Send {Lctrl down}{Home}{Lctrl up}
^Down::Send {Lctrl down}{End}{Lctrl up}
^Left::Send {Home}
^Right::Send {End}
^+Up::Send {Shift down}{Lctrl down}{Home}{Lctrl up}{Shift up}
^+Down::Send {Shift down}{Lctrl down}{End}{Lctrl up}{Shift up}
^+Left::Send {Shift down}{Home}{Shift up}
^+Right::Send {Shift down}{End}{Shift up}

;!Up::Send {PgUp}
;!Down::Send {PgDn}
!Left::Send ^{Left}
!Right::Send ^{Right}
;!+Up::Send {Shift down}{PgUp}
;!+Down::Send {Shift down}{PgDn}
!+Left::Send {Shift down}{Lctrl down}{Left}{Lctrl up}{Shift up}
!+Right::Send {Shift down}{Lctrl down}{Right}{Lctrl up}{Shift up}

; [TODO] Fix alt+arrows when AltTab (now CtrlTab) is active
 
; --------------------------------------------------------------
; Application specific
; --------------------------------------------------------------
; Google Chrome
#IfWinActive, ahk_class Chrome_WidgetWin_1
 
; Web Developer Tools with cmd + alt + i
^!SC017::Send {F12} ;i
 
; source code with cmd + alt + u
^!SC016::Send {Alt up}{LCtrl down}{SC016}{LCtrl up} ;u
 
#IfWinActive
