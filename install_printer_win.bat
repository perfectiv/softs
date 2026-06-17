@echo off
echo === Dang cai dat may in tren Windows ===

:: Tao cong IP voi ten tuy bien
cscript %WINDIR%\System32\Printing_Admin_Scripts\en-US\prnport.vbs -a -r PER_PRINTER_L3 -h 192.168.88.13 -o raw -n 9100
cscript %WINDIR%\System32\Printing_Admin_Scripts\en-US\prnport.vbs -a -r PER_PRINTER_ACCOUNTING_L2 -h 192.168.88.12 -o raw -n 9100
cscript %WINDIR%\System32\Printing_Admin_Scripts\en-US\prnport.vbs -a -r PER_PRINTER_FA_L2 -h 192.168.88.14 -o raw -n 9100

:: Cai may in voi ten + lau, tro vao cong tuong ung, dung driver co san
rundll32 printui.dll,PrintUIEntry /if /b "PER_PRINTER_L3" /r "PER_PRINTER_L3" /m "Microsoft PCL6 Class Driver" /z /q
rundll32 printui.dll,PrintUIEntry /if /b "PER_PRINTER_ACCOUNTING_L2" /r "PER_PRINTER_ACCOUNTING_L2" /m "Microsoft PCL6 Class Driver" /z /q
rundll32 printui.dll,PrintUIEntry /if /b "PER_PRINTER_FA_L2" /r "PER_PRINTER_FA_L2" /m "Microsoft PCL6 Class Driver" /z /q

echo === Hoan tat cai dat may in ===
pause
