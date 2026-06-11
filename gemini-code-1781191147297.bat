@echo off
setlocal enabledelayedexpansion

:: ปรับขนาดหน้าต่าง CMD ให้ใหญ่ขึ้น (Lines 40, Columns 120)
mode con: cols=120 lines=40

:: เปลี่ยนสีหน้าต่าง CMD: พื้นหลังสีแดง (4) ตัวอักษรสีขาว (F)
color 4F

:: ตั้งชื่อหัวข้อหน้าต่าง
title SECURITY NOTICE

:: กำหนดเวลาถอยหลังเริ่มต้นที่ 100 วินาที
set /a "seconds=100"

:loop
cls
echo ====================================================================================================
echo [!] SECURITY WARNING: SYSTEM ACCESS RESTRICTED [!]
echo ====================================================================================================
echo.
echo Your files are encrypted. To recover your data, payment is required.
echo.
echo [PAYMENT METHODS ACCEPTED]
echo 1. Bitcoin (BTC) Wallet: bc1qxy2kgdygjrsqtzq560urtyfhdserst
echo 2. PayPal Transfer: payment@securegateway.local
echo.
echo ----------------------------------------------------------------------------------------------------
echo  Time Remaining: !seconds! seconds
echo ----------------------------------------------------------------------------------------------------
echo.
echo ====================================================================================================

:: หน่วงเวลา 1 วินาทีในแต่ละรอบเพื่อใช้ในการนับถอยหลัง
timeout /t 1 >nul

:: ลดเวลาลงทีละ 1 วินาที
set /a "seconds-=1"

:: ถ้าเวลาลดลงจนต่ำกว่า 0 (หมดเวลา) ให้กระโดดไปที่ส่วนปิดโปรแกรม
if !seconds! lss 0 goto timeout_program

goto loop

:timeout_program
cls
exit