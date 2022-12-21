@echo off
if "%1"=="runas" (
  cd %~dp0
  wmic process where name="Beat Saber.exe" CALL setpriority "Realtime"
  echo Done
  pause
) else (
  powershell Start -File "cmd '/K %~f0 runas'" -Verb RunAs
)
exit