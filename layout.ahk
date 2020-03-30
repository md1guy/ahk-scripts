#NoEnv  
SendMode Input  
SetWorkingDir %A_ScriptDir%

sel := 0

#if (sel=0)
capslock::
    Send {lwin down}{Space}
    sel := 1
return 
#if

capslock up::
    Send {lwin up}
    sel := 0
return

!F1::
    Send !+1
return

!F2::
    Send !+2
return

!F3::
    Send !+3
return
