
@echo off

color b
echo [LOG] AutoOptimization made by k5sha v1.0.2
echo [LOG] Имя компьютера: %computername%
echo [LOG] Начата оптимизация...
echo [LOG] Очистка корзины...
cmd /c title Очистка корзины &Powershell Clear-RecycleBin -Force -ErrorAction:Ignore
echo [LOG] Очистка корзины окончена
echo [LOG] Очистка временых файлов...
cmd /c title Очистка временых файлов &cd/d %temp%&rd/s/q %temp% 2>nul &cd/d %tmp%&rd/s/q %tmp% 2>nul &cd/d C:\Windows\Prefetch &del *.pf 2>nul &cd/d C:\Windows\Temp&rd/s/q c:\windows\temp 2>nul
echo [LOG] Очистка временых файлов окончена
WScript C:\k5sha\move.vbs
echo [LOG] Очистка дисков от мусора...
cmd /c title Очистка дисков от мусора окончена &cleanmgr /verylowdisk /sagerun: 5
echo [LOG] Очистка дисков от мусора окончена
echo [LOG] Полезные настройки...
cmd /c title Полезные настройки &powercfg -h off
echo [LOG] Оптимизация окончена.
echo [LOG] Это окно можно закрыть.
echo [LOG] Авто закрытие через 15 сек.
WScript %temp%\startdelete.vbs


TIMEOUT /T 15 
exit


