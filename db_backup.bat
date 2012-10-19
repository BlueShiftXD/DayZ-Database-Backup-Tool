@echo off 
COLOR 0B
echo ©©©                      DayZ Database Backup Script                         ©©©
echo ©©©                                                                          ©©©
echo ©©©          This Script will backup your database every 30 minutes          ©©©
echo ©©©             to the following directory "Desktop\DayZBackup"              ©©©
echo ©©©                    To end this Script, just close it.                    ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo.
echo.

timeout /T 3  > nul
echo Checking for directories...

IF exist "C:\ProgramData\MySQL\MySQL Server 5.5\db_backup" ( echo The Directory Exists ) ELSE ( mkdir "C:\ProgramData\MySQL\MySQL Server 5.5\db_backup" && echo Directory Was Created)
IF exist "C:\ProgramData\MySQL\MySQL Server 5.5\db_backup\db_backup" ( echo The Directory Exists ) ELSE ( mkdir "C:\ProgramData\MySQL\MySQL Server 5.5\db_backup\db_backup" && echo Directory Was Created)
IF exist "C:\ProgramData\MySQL\MySQL Server 5.5\db_backup\db_backupHourOld" ( echo The Directory Exists ) ELSE ( mkdir "C:\ProgramData\MySQL\MySQL Server 5.5\db_backup\db_backupHourOld" && echo Directory Was Created)
IF exist "C:\ProgramData\MySQL\MySQL Server 5.5\db_backup\db_backup1Hour30MinsOld" ( echo The Directory Exists ) ELSE ( mkdir "C:\ProgramData\MySQL\MySQL Server 5.5\db_backup\db_backup1Hour30MinsOld" && echo Directory Was Created)
IF exist "C:\ProgramData\MySQL\MySQL Server 5.5\db_backup\db_backup2HoursOld" ( echo The Directory Exists ) ELSE ( mkdir "C:\ProgramData\MySQL\MySQL Server 5.5\db_backup\db_backup2HoursOld" && echo Directory Was Created)

echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.

SET SOURCE="C:\ProgramData\MySQL\MySQL Server 5.5\data\dayz"
SET TARGET="C:\ProgramData\MySQL\MySQL Server 5.5\db_backup\db_backup"

SET SOURCE2="C:\ProgramData\MySQL\MySQL Server 5.5\db_backup\db_backup"
SET TARGET2="C:\ProgramData\MySQL\MySQL Server 5.5\db_backup\db_backupHourOld"

SET SOURCE3="C:\ProgramData\MySQL\MySQL Server 5.5\db_backup\db_backupHourOld"
SET TARGET3="C:\ProgramData\MySQL\MySQL Server 5.5\db_backup\db_backup1Hour30MinsOld"

SET SOURCE4="C:\ProgramData\MySQL\MySQL Server 5.5\db_backup\db_backup1Hour30MinsOld"
SET TARGET4="C:\ProgramData\MySQL\MySQL Server 5.5\db_backup\db_backup2HoursOld"

goto Y

:Y
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                         Starting backup!                                 ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
timeout /T 1  > nul
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©       Copying 2 Hour Old Database to folder "db_backup2HoursOld"...      ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
xcopy %SOURCE4% %TARGET4% /s /i /q /y
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                  Done!                                   ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
timeout /T 1  > nul
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©   Copying 1.5 Hour Old Database to folder "db_backup1Hour30MinsOld"...   ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
xcopy %SOURCE3% %TARGET3% /s /i /q /y
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                  Done!                                   ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
timeout /T 1  > nul
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©        Copying 1 Hour Old Database to folder "db_backupHourOld"...       ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
xcopy %SOURCE2% %TARGET2% /s /i /q /y
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                  Done!                                   ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
timeout /T 1  > nul
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©        Copying Half an Hour Old Database to folder "db_backup"...        ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
xcopy %SOURCE% %TARGET% /s /i /q /y
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                  Done!                                   ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
timeout /T 1  > nul
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©             Waiting 30 Minutes to perform another backup...              ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
timeout /T 1799  > nul
echo.
echo.
echo.
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                 30 Minutes has passed, performing backup!                ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
echo ©©©                                                                          ©©©
for /L %%N IN (1, 1, 1) DO goto Y
