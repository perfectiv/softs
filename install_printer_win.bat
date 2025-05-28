@echo off
echo === Dang cai dat may in tren Windows ===

:: Tao cong IP voi ten tuy bien
cscript %WINDIR%\System32\Printing_Admin_Scripts\en-US\prnport.vbs -a -r Ricoh_MP_5001_LAU6_13 -h 192.168.88.13 -o raw -n 9100
cscript %WINDIR%\System32\Printing_Admin_Scripts\en-US\prnport.vbs -a -r Ricoh_MP_2852_LAU3_12 -h 192.168.88.12 -o raw -n 9100
cscript %WINDIR%\System32\Printing_Admin_Scripts\en-US\prnport.vbs -a -r Ricoh_MP_3053_LAU7_232 -h 192.168.88.232 -o raw -n 9100

:: Cai may in voi ten + lau, tro vao cong tuong ung, dung driver co san
rundll32 printui.dll,PrintUIEntry /if /b "Ricoh_MP_5001_LAU6" /r "Ricoh_MP_5001_LAU6_13" /m "Microsoft PCL6 Class Driver" /z /q
rundll32 printui.dll,PrintUIEntry /if /b "Ricoh_MP_2852_LAU3" /r "Ricoh_MP_2852_LAU3_12" /m "Microsoft PCL6 Class Driver" /z /q
rundll32 printui.dll,PrintUIEntry /if /b "Ricoh_MP_3053_LAU7" /r "Ricoh_MP_3053_LAU7_232" /m "Microsoft PCL6 Class Driver" /z /q

echo === Hoan tat cai dat may in ===
pause
