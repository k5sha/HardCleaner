
@echo off

color b
echo [LOG] AutoOptimization made by k5sha v1.0.2
echo [LOG] ��� ��������: %computername%
echo [LOG] ���� ��⨬�����...
echo [LOG] ���⪠ ��২��...
cmd /c title ���⪠ ��২�� &Powershell Clear-RecycleBin -Force -ErrorAction:Ignore
echo [LOG] ���⪠ ��২�� ����祭�
echo [LOG] ���⪠ �६���� 䠩���...
cmd /c title ���⪠ �६���� 䠩��� &cd/d %temp%&rd/s/q %temp% 2>nul &cd/d %tmp%&rd/s/q %tmp% 2>nul &cd/d C:\Windows\Prefetch &del *.pf 2>nul &cd/d C:\Windows\Temp&rd/s/q c:\windows\temp 2>nul
echo [LOG] ���⪠ �६���� 䠩��� ����祭�
WScript C:\k5sha\move.vbs
echo [LOG] ���⪠ ��᪮� �� ����...
cmd /c title ���⪠ ��᪮� �� ���� ����祭� &cleanmgr /verylowdisk /sagerun: 5
echo [LOG] ���⪠ ��᪮� �� ���� ����祭�
echo [LOG] ������� ����ன��...
cmd /c title ������� ����ன�� &powercfg -h off
echo [LOG] ��⨬����� ����祭�.
echo [LOG] �� ���� ����� �������.
echo [LOG] ��� �����⨥ �१ 15 ᥪ.
WScript %temp%\startdelete.vbs


TIMEOUT /T 15 
exit


