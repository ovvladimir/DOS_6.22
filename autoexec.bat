@ECHO OFF

rem ��⠭�������� ���� � �६���� 䠩���
SET TEMP=C:\TEMP
SET TMP=C:\TEMP

rem �ࠩ��� ���஢���� ��᪠
\MSDOS\SMARTDRV.EXE

rem �ࠩ��� ��� � ����䨪���
rem LH MSDOS\MOUSE.COM
rem LH BOOT\KEYRUS.COM
\MSDOS\MOUSE.COM
\BOOT\KEYRUS /scan=29e /lat=off

rem �����প� ������� ����
\Boot\DOSLFN\doslfn.com -z:\Boot\DOSLFN\cp866uni.tbl

rem �����প� NTFS
cd \BOOT
cd NTFS
call mount.bat
cd \

ECHO  ����������������������������������������������ͻ
Echo  �        Start NC+NTFS+LFN+MOUSE+KEYRUS        �
ECHO  ����������������������������������������������ͼ

GOTO %CONFIG%

:RAM
rem ����� ���� TETRIS � �������⥫��
cd \BOOT
cd TETRIS
call tetris.bat
cd \
rem GOTO END
rem Pause

:CD_IDE

:CD_AHCI

:NC
rem ����� 䠩����� �������஢
\DN\NC5\nc.exe
rem \DN\NC\nc.exe
rem \DN\VC\vc.com
rem \DN\VC5\vc.com
rem \DN\DN\DN.com

rem ver - ����� DOS, MEM - ��� �����, MSD - ���䨣���� ��������
