#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

#Enter up::
    Run, *RunAs %ProgramFiles%\Git\git-bash.exe --cd-to-home -c "/usr/bin/bash --login -i"
return