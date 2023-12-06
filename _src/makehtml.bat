@rem Scripts and rips by Josh (Lotte) gh:@lottehime t:@lotte_hime
@echo off
title ACNH Pattern Dump Index Site Generator

setlocal enableextensions enabledelayedexpansion

call:audieASCII

:mainFunc

set /a count = 0
set /a cntpat = 0
set /a cntpro = 0
set /a countother = -1

set "patdir=files\simple"
set "prodir=files\pro"
set "index=files\table"
set "top=files\top"
set "bot=files\bot"
set "indexout=index"


echo.
echo Removing old files . . .
echo.
echo Deleting index HTML files . . .
del !index!.html
del !indexout!.html
timeout 1 >nul


echo.
echo Getting file totals . . .
for %%a in ("!patdir!\*.nhd") do ( set /a cntpat += 1 )
for %%b in ("!prodir!\*.nhpd") do ( set /a cntpro += 1 )
echo Simple Patterns^: !cntpat!
echo PRO Patterns^: !cntpro!
timeout 1 >nul


echo.
echo Generating index HTML . . .
timeout 1 >nul


for %%i in ("!patdir!\*.nhd") do (
	set /a count += 1

	set "str=%%i"
  set str=!str:~0,-4!
  set "pngstr=!str!.png"
  set "txtstr=!str!.txt"
  set "qrstr=!str!.QR.png"
  set "acnlstr=!str!.acnl"

  echo ^<tr^> >> !index!.html
  echo ^<td^> >> !index!.html
  echo ^<div class="tooltip-item"^>^<a href="#"^>^<img src="" data-src="!pngstr!" width="64" height="64"^>^</a^>^</div^> >> !index!.html
  echo ^</td^> >> !index!.html
  echo ^<td^> >> !index!.html
  echo ^<div class="tooltip-item"^>^<a href="#"^>^<img src="" data-src="!qrstr!" width="64" height="64"^>^</a^>^</div^> >> !index!.html
  echo ^</td^> >> !index!.html
  echo ^<td^> >> !index!.html
  echo ^<a href="%%i"^>^<img src="img/download-outline.svg" width="16" height="16"^> .nh[p]d^</a^>^<br^> >> !index!.html
  echo ^<a download='file' href="!qrstr!"^>^<img src="img/download-outline.svg" width="16" height="16"^> .png QR^</a^>^<br^> >> !index!.html
  echo ^<a href="!acnlstr!"^>^<img src="img/download-outline.svg" width="16" height="16"^> .acnl^</a^> >> !index!.html
  echo ^</td^> >> !index!.html

  for /F "usebackq delims=:" %%x in ("!txtstr!") do (
	 echo ^<td^>%%x^</td^> >> !index!.html
  )

  echo ^</tr^> >> !index!.html

	echo Adding simple pattern^: !count! of !cntpat!
)

set /a count = 0

for %%p in ("!prodir!\*.nhpd") do (
	set /a count += 1

	set "str=%%p"
  set str=!str:~0,-5!
  set "pngstr=!str!.png"
  set "txtstr=!str!.txt"
  set "qrstr=!str!.QR.png"
  set "acnlstr=!str!.acnl"

  echo ^<tr^> >> !index!.html
  echo ^<td^> >> !index!.html
  echo ^<div class="tooltip-item"^>^<a href="#"^>^<img src="" data-src="!pngstr!" width="64" height="64"^>^</a^>^</div^> >> !index!.html
  echo ^</td^> >> !index!.html
  echo ^<td^> >> !index!.html
  echo ^<div class="tooltip-item"^>^<a href="#"^>^<img src="" data-src="!qrstr!" width="64" height="64"^>^</a^>^</div^> >> !index!.html
  echo ^</td^> >> !index!.html
  echo ^<td^> >> !index!.html
  echo ^<a href="%%p"^>^<img src="img/download-outline.svg" width="16" height="16"^> .nh[p]d^</a^>^<br^> >> !index!.html
  echo ^<a download='file' href="!qrstr!"^>^<img src="img/download-outline.svg" width="16" height="16"^> .png QR^</a^>^<br^> >> !index!.html
  echo ^<a href="!acnlstr!"^>^<img src="img/download-outline.svg" width="16" height="16"^> .acnl^</a^> >> !index!.html
  echo ^</td^> >> !index!.html

  for /F "usebackq delims=:" %%x in ("!txtstr!") do (
		echo ^<td^>%%x^</td^> >> !index!.html
	)

  echo ^</tr^> >> !index!.html

	echo Adding PRO pattern^: !count! of !cntpro!
)


echo.
copy /b !top!.html +!index!.html +!bot!.html !indexout!.html
echo.
echo Launching page . . .
timeout 2 >nul
start !indexout!.html
goto:endFunc


:audieASCII
for /F %%a in ('echo prompt $E ^| cmd') do (
  set "ESC=%%a"
)

echo.
echo !ESC![93m                           ##-                                                !ESC![0m
echo !ESC![93m                #+        #+#+         ACNH Pattern Dump Index Site Generator !ESC![0m
echo !ESC![93m               #+#.      +#+++                                                !ESC![0m
echo !ESC![93m              -#++#     +#++##.        by Josh (lotte)                        !ESC![0m
echo !ESC![93m              #+++#+   +#+++##.        GitHub:@lottehime T:@lotte_hime        !ESC![0m
echo !ESC![93m             -#++++#####++.+-.#+                                              !ESC![0m
echo !ESC![93m             #++-.+####+...+##-+.                                             !ESC![0m
echo !ESC![93m            -#+..+..#####  .###-+                                             !ESC![0m
echo !ESC![93m           +#+++.-######.    .-#.                                             !ESC![0m
echo !ESC![93m         .#+++++++-      . ...+#                                              !ESC![0m
echo !ESC![93m        +#++++++++++++--.....-+-+                                             !ESC![0m
echo !ESC![93m      .#+++++++++-.  ..++++++++-#.                                            !ESC![0m
echo !ESC![93m     +#+++++++#######+..-++++++###                                            !ESC![0m
echo !ESC![93m   .#+++++++++++++++- -#++++.  .+#                                            !ESC![0m
echo !ESC![93m  .######++++++++++-----++++      ++                                          !ESC![0m
echo !ESC![93m       ##+++++++++..    ..++-      .#-                                        !ESC![0m
echo !ESC![93m     .#++++++++++.                .-+++                                       !ESC![0m
echo !ESC![93m    +#+++++++++++-                .####.                                      !ESC![0m
echo !ESC![93m   ###############+-.  . ..         .++                                       !ESC![0m
echo !ESC![93m                  .--++#+#+    . ..+-                                         !ESC![0m
echo !ESC![93m                           .+##+##-                                           !ESC![0m
echo.
echo Beginning generation . . .
timeout 2 >nul
cls
echo.                                   
echo !ESC![93m               +            ..                                                !ESC![0m
echo !ESC![93m              +++          ++#.        ACNH Pattern Dump Index Site Generator !ESC![0m   
echo !ESC![93m              #+++        +++++                                               !ESC![0m
echo !ESC![93m             #+++++      ++++++        by Josh (lotte)                        !ESC![0m
echo !ESC![93m            .+++++#     .++++++        GitHub:@lottehime T:@lotte_hime        !ESC![0m
echo !ESC![93m            ++++++++++..++++++#                                               !ESC![0m
echo !ESC![93m            ++  +######.  ++##.+                                              !ESC![0m
echo !ESC![93m            #+..++++++#+...+++#++                                             !ESC![0m
echo !ESC![93m           +++++.+++++........+.+                                             !ESC![0m
echo !ESC![93m        .++++++++....+++++++.++++                                             !ESC![0m
echo !ESC![93m       +++++++#######.++++++++++++                                            !ESC![0m
echo !ESC![93m     .#++++++++.+++. ++++++++++++#                                            !ESC![0m
echo !ESC![93m   .#+++++++++++.++   .+++     .+++                                           !ESC![0m
echo !ESC![93m  ++++++++++++++++-----           ++                                          !ESC![0m
echo !ESC![93m  .+++++##++++++.              .#++#++                                        !ESC![0m
echo !ESC![93m       +++++++++  .          .      .+                                        !ESC![0m
echo !ESC![93m     .++++++++++.                   ++                                        !ESC![0m
echo !ESC![93m    .+++++++++++++.    ++++++++++.++                                          !ESC![0m
echo !ESC![93m   +++++++++++++++++.     +++++++++.    -Foxtrot                              !ESC![0m
echo !ESC![93m                .++++++++. .+++++++.                                          !ESC![0m
echo !ESC![93m                          +#+....#+                                           !ESC![0m
echo.
echo Beginning generation . . .                                  
timeout 2 >nul
cls
echo.
echo !ESC![93m                           ##-                                                !ESC![0m
echo !ESC![93m                #+        #+#+         ACNH Pattern Dump Index Site Generator !ESC![0m
echo !ESC![93m               #+#.      +#+++                                                !ESC![0m
echo !ESC![93m              -#++#     +#++##.        by Josh (lotte)                        !ESC![0m
echo !ESC![93m              #+++#+   +#+++##.        GitHub:@lottehime T:@lotte_hime        !ESC![0m
echo !ESC![93m             -#++++#####++.+-.#+                                              !ESC![0m
echo !ESC![93m             #++-.+####+...+##-+.                                             !ESC![0m
echo !ESC![93m            -#+..+..#####  .###-+                                             !ESC![0m
echo !ESC![93m           +#+++.-######.    .-#.                                             !ESC![0m
echo !ESC![93m         .#+++++++-      . ...+#                                              !ESC![0m
echo !ESC![93m        +#++++++++++++--.....-+-+                                             !ESC![0m
echo !ESC![93m      .#+++++++++-.  ..++++++++-#.                                            !ESC![0m
echo !ESC![93m     +#+++++++#######+..-++++++###                                            !ESC![0m
echo !ESC![93m   .#+++++++++++++++- -#++++.  .+#                                            !ESC![0m
echo !ESC![93m  .######++++++++++-----++++      ++                                          !ESC![0m
echo !ESC![93m       ##+++++++++..    ..++-      .#-                                        !ESC![0m
echo !ESC![93m     .#++++++++++.                .-+++                                       !ESC![0m
echo !ESC![93m    +#+++++++++++-                .####.                                      !ESC![0m
echo !ESC![93m   ###############+-.  . ..         .++                                       !ESC![0m
echo !ESC![93m                  .--++#+#+    . ..+-                                         !ESC![0m
echo !ESC![93m                           .+##+##-                                           !ESC![0m
echo.
echo Beginning generation . . .
echo.
timeout 2 >nul

goto:mainFunc


:endFunc
exit