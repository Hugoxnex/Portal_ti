@echo off
setlocal
set "SCRIPT=%~dp0app.ps1"
set "TEMP_DIR=%TEMP%\PortalDeAcessos"
set "LOCAL_SCRIPT=%TEMP_DIR%\app.ps1"

if not exist "%TEMP_DIR%" mkdir "%TEMP_DIR%"
copy /Y "%SCRIPT%" "%LOCAL_SCRIPT%" >nul 2>&1

powershell.exe -NoProfile -ExecutionPolicy Bypass -STA -Command "$p = '%LOCAL_SCRIPT%'; if (Test-Path -LiteralPath $p) { try { Unblock-File -LiteralPath $p -ErrorAction SilentlyContinue } catch {} try { Remove-Item -LiteralPath $p -Stream Zone.Identifier -Force -ErrorAction SilentlyContinue } catch {} & $p } else { Write-Host 'Arquivo nao encontrado: ' $p; pause }"

endlocal
exit /b 0
