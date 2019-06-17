@ECHO OFF

rem Устанавливаем путь к временным файлам
SET TEMP=C:\TEMP
SET TMP=C:\TEMP

rem Драйвер кэширования диска
\MSDOS\SMARTDRV.EXE

rem Драйвер мыши и руссификатор
rem LH MSDOS\MOUSE.COM
rem LH BOOT\KEYRUS.COM
\MSDOS\MOUSE.COM
\BOOT\KEYRUS /scan=29e /lat=off

rem Поддержка длинных имен
\Boot\DOSLFN\doslfn.com -z:\Boot\DOSLFN\cp866uni.tbl

rem Поддержка NTFS
cd \BOOT
cd NTFS
call mount.bat
cd \

ECHO  ╔══════════════════════════════════════════════╗
Echo  ║        Start NC+NTFS+LFN+MOUSE+KEYRUS        ║
ECHO  ╚══════════════════════════════════════════════╝

GOTO %CONFIG%

:RAM
rem Запуск игры TETRIS с замедлителем
cd \BOOT
cd TETRIS
call tetris.bat
cd \
rem GOTO END
rem Pause

:CD_IDE

:CD_AHCI

:NC
rem Запуск файловых менеджеров
\DN\NC5\nc.exe
rem \DN\NC\nc.exe
rem \DN\VC\vc.com
rem \DN\VC5\vc.com
rem \DN\DN\DN.com

rem ver - версия DOS, MEM - тест памяти, MSD - конфигурация компьютера
