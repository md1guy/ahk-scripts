#NoEnv  
SendMode Input  
SetWorkingDir %A_ScriptDir%

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