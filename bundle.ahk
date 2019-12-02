#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

; caps to change keyboard layout
sel := 0

#if (sel=0)
    capslock::
    send {lwin down}{Space}
    sel := 1
return
#if
    
capslock up::
    send {lwin up}
    sel := 0
return

; win+enter to start git bash as admin
#Enter up::
    Run, *RunAs %ProgramFiles%\Git\git-bash.exe -c "/usr/bin/bash --login -i"
return

; win+shift+enter to start new windows terminal
#+Enter up::
    Run, C:\Users\ovolc\AppData\Local\Microsoft\WindowsApps\wt.exe
return

; ctrl+space to stick focuced window to top
^SPACE::
    WinSet, AlwaysOnTop, Toggle, A
return

; win+shift+q to close focused window
#+q::
    Send !{F4}
return

; ctrl+shift+l to toggle windows locking. requires administrator privileges
^+l::
    RegRead, lockDisabled, HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System, DisableLockWorkstation
    if (lockDisabled = 0) {
        RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System, DisableLockWorkstation, 1
    } else {
        RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System, DisableLockWorkstation, 0
    }
return