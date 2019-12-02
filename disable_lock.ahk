#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

^+l::
    RegRead, lockDisabled, HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System, DisableLockWorkstation
    if (lockDisabled = 0) {
        RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Policies\System, DisableLockWorkstation, 1
    } else {
        RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Policies\System, DisableLockWorkstation, 0
    }
return