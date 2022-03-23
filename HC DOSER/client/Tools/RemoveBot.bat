@echo off
title Hypocrite bot remover
echo Hypocrite bot remover
echo ---------------------------
color 0a
echo Bot path: %appdata%\BOT-INSTALLATION-NAME.exe
echo For manual removal, kill the bot process, and delete it from %appdata%
echo ----------------------------------------------------------------------------------------

set /p Installname=Installation name of bot: 
echo Starting removal...
taskkill /IM %installname% /F > nul
del %appdata%\%installname% > nul
echo done
pause
