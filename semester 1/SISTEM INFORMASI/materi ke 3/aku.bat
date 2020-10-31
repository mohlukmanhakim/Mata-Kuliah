@echo off
color a
if EXIST "answer" goto start
if NOT EXIST "answer" goto make 

:start
echo silahkan masukkan nama anda,lalu tekan Enter...
set /p name=
cls
if EXIST "answer/%name%.txt" goto done

:quest1
echo JAWABLAH PERTAYAAN BERIKUT DENGAN MEMBERIKAN JAWABAN A, B, C
echo.
echo soal No.1
echo Jurusan apakah yang kalian ambil di UMK..?
echo A. Teknik Informatika
echo B. Sistem Informasi
echo C. Ekonomi
set /p "answer=answer>"
if %answer%==A goto true
if %answer%==a goto true
if NOT %answer%==A goto false
:true
set cho=1
goto quest2
:false
set cho=0
goto quest2

:quest2
echo.
echo soal No.2
echo Di mana Anda menempuh studi perkuliahan sekarang...?
echo A. Universitas Muria Kudus
echo B. Universitas Dian Nuswantoro
echo C. universitas Diponegoro
set /p "answer=answer>"
if %answer%==A goto true2
if %answer%==a goto true2
if NOT %answer%==A goto false2
:true2
set /a cho2=%cho%+1
goto quest3
:false2
set /a cho2=%cho%+0
goto quest3

:quest3
echo.
echo soal No.3
echo Teknik Informatika berapa di bawah fakultas apa...?
echo A. FKIP
echo B. Teknik
echo C. Teknik Informatika
set /p "answer=answer>"
if %answer%==B goto true3
if %answer%==b goto true3
if NOT %answer%==A goto false3
:true3
set /a cho3=%cho2%+1
goto quest4
:false3
set /a cho3=%cho2%+0
goto quest4

:quest4
echo.
echo soal No.4
echo Mata kuliah apa yang kalian pelajari...?
echo A. Praktikum Sistem Operasi
echo B. Arsitektur Komputer
echo C. Metodologi Penelitian
set /p "answer=answer>"
if %answer%==A goto true4
if %answer%==a goto true4
if NOT %answer%==A goto false4
:true4
set /a cho4=%cho3%+1
goto quest5
:false4
set /a cho4=%cho3%+0
goto quest5

:quest5
echo.
echo soal No.5
echo apakah kalian menyukai mata kuliah PDK 1...?
echo A. saya tidak tahu 
echo B. ya, saya menyukai PDK 1
echo C. Tidak
set /p "answer=answer>"
if %answer%==A goto true5
if %answer%==a goto true5
if %answer%==B goto truelove5
if %answer%==b goto truelove5
if NOT %answer%==A goto false5
:true5
set /a cho5=%cho4%+1
set love=confused
goto end
:truelove5
set love=menyukai PDK 1
set /a cho5=%cho4%+1
goto end
:false5
set /a cho5=%cho4%+0
goto end

:end
cls
echo ---------------------------Hasil-----------------------------
echo.
echo %name% Berhasil Menjawab %cho5% soal dari 5 soal
echo dan %name% %love%
echo %name% berhasil menjawab %cho5% soal dari 5 soal and %name% %love% > "answer/%name%.txt"
echo semua soal telah selesai di jawab oleh %name%
echo.
echo -------------------------------------------------------------
echo By : Moh Lukman Hakim
attrib +h +a +s +r "answer/%name%.txt"
pause>"answer/pause"
exit

:make 
md "answer"
attrib +h +a +s +r "answer"
goto start

:done
echo -------------------------------------------------------------
echo.
echo maaf %name% anda tidak dapat mengisi form ini
echo anda hanya dapat mengisi form ini satu kali ini saja 
echo.
echo -------------------------------------------------------------
echo By : Moh Lukman Hakim
pause>"answer/pause"
exit