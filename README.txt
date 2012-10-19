How to Install:

Copy to any directory, open along-side
with your server start batch file.

What It Does:

Creates the following directories if they don't exist:

	"C:\ProgramData\MySQL\MySQL Server 5.5\db_backup"
	   "C:\ProgramData\MySQL\MySQL Server 5.5\db_backup\db_backup"
	   "C:\ProgramData\MySQL\MySQL Server 5.5\db_backup\db_backupHourOld"
	   "C:\ProgramData\MySQL\MySQL Server 5.5\db_backup\db_backup1Hour30MinsOld"
	   "C:\ProgramData\MySQL\MySQL Server 5.5\db_backup\db_backup2HoursOld"

Once, they're made, the first backup is made.
After 2 hours all 4 folders should contain different databases.

Credits:

Made by BlueShiftXD.
Based on ShadowDuke's Script.