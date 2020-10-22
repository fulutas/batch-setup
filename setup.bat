@@echo off
title Nebim v3 Yukleme Yapiliyor
echo Program Kaldiriliyor
wmic product where name="Nebim V3 ERP Solution" call uninstall
rmdir /Q /S "C:\Program Files (x86)\Nebim\"
echo Sistem Kuruluyor Bekleyiniz...
msiexec /i "filename\scripts\Nebim-Kurulum\as.msi" /qb
echo Hotfix Kurulumu Yapiliyor
copy /Y "filename\Update\*" "C:\Program Files (x86)\Nebim\V3\"  
echo Hotfix Yapildi
echo Lütfen Bir Tuşuna Basınız
Pause 