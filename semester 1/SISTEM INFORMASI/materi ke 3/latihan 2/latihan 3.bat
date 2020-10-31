@echo off
color a

echo selamat datang di program sederhana
pause>nul
cls
set /p nama=masukkan nama : 
set /p nim =masukkan NIM  : 
cls

echo program penjumlahan sederhana
echo -
set /p n1a=masukkan angka pertama :
set /p n2a=masukkan angka kedua   :
echo -
set /a vara=%n1a%+%n2a%
echo hasil %n1a%+%n2a%=%vara%
echo -
echo next program !!!
echo -
pause
cls

echo program pengurangan sederhana
echo -
set /p n1b=masukkan angka pertama :
set /p n2b=masukkan angka kedua   :
echo -
set /a varb=%n1b%-%n2b%
echo hasil %n1b%-%n2b%=%varb%
echo -
echo next program !!!
echo -
pause
cls

echo program perkalian sederhana
echo -
set /p n1c=masukkan angka pertama :
set /p n2c=masukkan angka kedua   :
echo -
set /a varc=%n1c%*%n2c%
echo hasil %n1c%*%n2c%=%varc%
echo -
echo next program !!!
echo -
pause
cls

echo program pembagian sederhana
echo -
set /p n1d=masukkan angka pertama :
set /p n2d=masukkan angka kedua   :
echo -
set /a vard=%n1d%/%n2d%
echo hasil %n1d%/%n2d%=%vard%
echo -
echo next program !!!
echo -
pause
cls

echo 00000000000000000000000000000000000000000000000000000
echo >                                                   >
echo >           hasil dari program sederhana            >
echo >                                                   >
echo 00000000000000000000000000000000000000000000000000000
echo >                                                   >
echo >  ==============================================   >
echo    [                ]     bilangan 1 :%n1a%
echo    [     operasi    ]     bilangan 2 :%n2a%
echo    [   penjumlahan  ]     
echo    [                ]     jumlah     :%vara%
echo >  ----------------------------------------------   >
echo    [               ]     bilangan 1 :%n1b%
echo    [     operasi   ]     bilangan 2 :%n2b%
echo    [  pengurangan  ]     
echo    [               ]     jumlah     :%varb%
echo >  ----------------------------------------------   >
echo    [               ]     bilangan 1 :%n1c%
echo    [    operasi    ]     bilangan 2 :%n2c%
echo    [   perkalian   ]     
echo    [               ]     jumlah     :%varc%
echo >  ----------------------------------------------   >
echo    [                ]     bilangan 1 :%n1d%
echo    [    operasi     ]     bilangan 2 :%n2d%
echo    [   pembagian    ]     
echo    [                ]     jumlah     :%vard%
echo >  ==============================================   >
echo >                                                   >
echo >                                                   >
echo >                                                   >
echo 00000000000000000000000000000000000000000000000000000
echo >                                                   >
echo >    Created by :                                   >
echo                  %nama%                              
echo >                                                   >
echo                  %nim%                              
echo >                                                   >
echo 00000000000000000000000000000000000000000000000000000
pause>nul
cls