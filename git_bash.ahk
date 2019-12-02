#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

#Enter up::
    Run, *RunAs %ProgramFiles%\Git\git-bash.exe -c "/usr/bin/bash --login -i"
return