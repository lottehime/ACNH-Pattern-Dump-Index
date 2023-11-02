@rem Scripts and rips by Josh (Lotte) @lottehime/@lotte_hime
@echo off
title ACNH Pattern Dump Index Site Generator
echo Beginning generation...
echo.

setlocal enableextensions enabledelayedexpansion

set /a count = 0
set /a cntpat = 0
set /a cntpro = 0

set "patdir=pat"
set "prodir=pro"

set "index=index"
set "pattern=patterns"
set "pro=pro"

echo.
echo Removing old files...
echo.
echo Deleting index HTML file...
del !index!.html
echo.
echo Deleting pattern HTML file...
del !pattern!.html
echo.
echo Deleting PRO pattern HTML file...
del !pro!.html

echo.
echo Getting file totals...
echo.
for %%a in ("!patdir!\*.png") do ( set /a cntpat += 1 )
for %%b in ("!prodir!\*.png") do ( set /a cntpro += 1 )
echo Normal Patterns^: !cntpat!
echo PRO Patterns^: !cntpro!

echo.
echo Generating HTML pages...



echo.
echo Generating index HTML...
echo.
echo ^<html^> >> !index!.html
echo ^<head^> >> !index!.html
echo ^<title^>AC^:NH Pattern Dump Index^</title^> >> !index!.html
echo ^<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico"^> >> !index!.html
echo ^<style^> >> !index!.html
echo ^.grid-container ^{ >> !index!.html
echo   display^: grid^; >> !index!.html
echo   grid-template-columns^: auto auto^; >> !index!.html
echo   gap^: 10px^; >> !index!.html
echo   padding^: 10px^; >> !index!.html
echo ^} >> !index!.html
echo ^.grid-container > div { >> !index!.html
echo   background-color^: rgba^(255^, 255^, 255^, 0.8^)^; >> !index!.html
echo   border^: 1px solid black^; >> !index!.html
echo   text-align^: center^; >> !index!.html
echo   font-size^: 30px^; >> !index!.html
echo ^} >> !index!.html
echo .imgfloat ^{ >> !index!.html
echo   z-index: 1^; >> !index!.html
echo   position: absolute^; >> !index!.html
echo   top: 10px^; >> !index!.html
echo   left: 10px^; >> !index!.html
echo ^} >> !index!.html
echo ^#footer ^{ >> !index!.html
echo   position^: fixed^; >> !index!.html
echo   bottom^: 0^; >> !index!.html
echo   width^: 100^%^; >> !index!.html
echo   height^: 4rem^; >> !index!.html
echo ^} >> !index!.html
echo body ^{ >> !index!.html
echo    background-color^: ^#2196F3^; >> !index!.html
echo    background-image^: url("images/bg.png")^; >> !index!.html
echo    background-position^: right bottom^; >> !index!.html
echo    background-repeat^: no-repeat^; >> !index!.html
echo ^} >> !index!.html
echo ^</style^> >> !index!.html

echo ^<script^> >> !index!.html
echo window.onload ^= displayImage^; >> !index!.html
echo var imagesArray ^= ^["1.png"^, "2.png"^, "3.png"^, "4.png"^, "5.png"^, "6.png"^]^; >> !index!.html
echo function displayImage^(^)^{ >> !index!.html
echo     var num ^= Math.floor^(Math.random^(^) ^* 6^)^; >> !index!.html
echo     document.getElementById^("villager"^).src ^= 'images/'^+ imagesArray^[num^]^; >> !index!.html
echo ^} >> !index!.html
echo ^</script^> >> !index!.html

echo ^</head^> >> !index!.html

echo ^<body style="background-color:#ffd4ee"^> >> !index!.html

echo ^<h1 style="text-align: center; font-family: helvetica"^>^<img src="images/favicon.png" width="24" height="24"/^>AC^:NH Pattern Dump Index^</h1^> >> !index!.html
echo ^<h2 style="text-align: center"^>Normal ^& PRO Patterns^</h2^> >> !index!.html

echo ^<img src="" width="96" height="96" id="villager" alt="VillagerImg" class="imgfloat" title="A cutie^!"^> >> !index!.html

echo ^<div class="grid-container"^> >> !index!.html

echo ^<div^> >> !index!.html
echo ^<a href="!pattern!.html"^>^<img src="images/pat.png" width="96" height="96"^>^<br^>Normal Patterns^</a^> >> !index!.html
echo ^</div^> >> !index!.html
echo ^<div^> >> !index!.html
echo ^<a href="!pro!.html"^>^<img src="images/pro.png" width="96" height="96"^>^<br^>PRO Patterns^</a^> >> !index!.html
echo ^</div^> >> !index!.html

echo ^</div^> >> !index!.html

echo ^<br^>^<br^>^<br^> >> !index!.html

echo ^</body^> >> !index!.html

echo ^<footer id="footer"^> >> !index!.html
echo ^<p style="font-family: helvetica"^>Page/Script by Josh ^(Lotte^) 👨‍💻^<a href="https://github.com/lottehime"^>@lottehime^</a^> ^& 🐦^<a href="https://twitter.com/lotte_hime"^>@lotte_hime^</a^>^<br^>Level any complaints to: /dev/null 💀^</p^> >> !index!.html
echo ^</footer^> >> !index!.html

echo ^</html^> >> !index!.html



echo.
echo Generating normal pattern HTML...
echo.
echo ^<html^> >> !pattern!.html
echo ^<head^> >> !pattern!.html
echo ^<title^>AC^:NH Pattern Dump Index - Normal Patterns^</title^> >> !pattern!.html
echo ^<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico"^> >> !pattern!.html
echo ^<style^> >> !pattern!.html
echo ^.grid-container ^{ >> !pattern!.html
echo   display^: grid^; >> !pattern!.html
echo   grid-template-columns^: auto auto auto auto auto auto^; >> !pattern!.html
echo   gap^: 10px^; >> !pattern!.html
echo   background-color^: ^#2196F3^; >> !pattern!.html
echo   padding^: 10px^; >> !pattern!.html
echo ^} >> !pattern!.html
echo ^.grid-container > div { >> !pattern!.html
echo   background-color^: rgba^(255^, 255^, 255^, 0.8^)^; >> !pattern!.html
echo   border^: 1px solid black^; >> !pattern!.html
echo   text-align^: center^; >> !pattern!.html
echo   font-size^: 10px^; >> !pattern!.html
echo ^} >> !pattern!.html
echo .imgfloat ^{ >> !pattern!.html
echo   z-index: 1^; >> !pattern!.html
echo   position: absolute^; >> !pattern!.html
echo   top: 10px^; >> !pattern!.html
echo   left: 10px^; >> !pattern!.html
echo ^} >> !pattern!.html
echo ^#footer ^{ >> !pattern!.html
echo   position^: fixed^; >> !pattern!.html
echo   bottom^: 0^; >> !pattern!.html
echo   width^: 100^%^; >> !pattern!.html
echo   height^: 4rem^; >> !pattern!.html
echo ^} >> !pattern!.html
echo body ^{ >> !pattern!.html
echo    background-color^: ^#2196F3^; >> !pattern!.html
echo    background-image^: url("images/bg.png")^; >> !pattern!.html
echo    background-position^: right bottom^; >> !pattern!.html
echo    background-repeat^: no-repeat^; >> !pattern!.html
echo ^} >> !pattern!.html
echo ^</style^> >> !pattern!.html

echo ^<script^> >> !pattern!.html
echo window.onload ^= displayImage^; >> !pattern!.html
echo var imagesArray ^= ^["1.png"^, "2.png"^, "3.png"^, "4.png"^, "5.png"^, "6.png"^]^; >> !pattern!.html
echo function displayImage^(^)^{ >> !pattern!.html
echo     var num ^= Math.floor^(Math.random^(^) ^* 6^)^; >> !pattern!.html
echo     document.getElementById^("villager"^).src ^= 'images/'^+ imagesArray^[num^]^; >> !pattern!.html
echo ^} >> !pattern!.html
echo ^</script^> >> !pattern!.html

echo ^</head^> >> !pattern!.html

echo ^<body style="background-color:#ffd4ee"^> >> !pattern!.html

echo ^<h1 style="text-align: center; font-family: helvetica"^>^<img src="images/favicon.png" width="24" height="24"/^>AC^:NH Pattern Dump Index^</h1^> >> !pattern!.html
echo ^<h2 style="text-align: center"^>Normal Patterns^</h2^> >> !pattern!.html

echo ^<img src="" width="96" height="96" id="villager" alt="VillagerImg" class="imgfloat" title="A cutie^!"^> >> !pattern!.html

echo ^<div class="grid-container"^> >> !pattern!.html

for %%i in ("!patdir!\*.png") do (
	set /a count += 1

	set "str=%%i"
    set str=!str:~0,-4!
    set "nhdstr=!str!.nhd"
    set "txtstr=!str!.txt"

	echo ^<div^> >> !pattern!.html
	echo ^<a href="!nhdstr!"^>^<img src="%%i" width="64" height="64" /^>^</a^> >> !pattern!.html
	set "strl=%%i"
    set strl=!strl:~4,-4!
	echo ^<p style="font-family: helvetica; font-size: 8;"^>!strl!^</p^> >> !pattern!.html

	for /F "usebackq delims=" %%x in ("!txtstr!") do (
		echo ^<strong^>^<p style="font-family: helvetica; font-size: 11;"^>%%x^</p^>^</strong^> >> !pattern!.html
	)

	echo ^</div^> >> !pattern!.html

	echo Adding pattern^: !count! of !cntpat!
)

echo ^</div^> >> !pattern!.html

echo ^<br^>^<br^>^<br^> >> !pattern!.html

echo ^</body^> >> !pattern!.html

echo ^<footer id="footer"^> >> !pattern!.html
echo ^<p style="font-family: helvetica"^>Page/Script by Josh ^(Lotte^) 👨‍💻^<a href="https://github.com/lottehime"^>@lottehime^</a^> ^& 🐦^<a href="https://twitter.com/lotte_hime"^>@lotte_hime^</a^>^<br^>Level any complaints to: /dev/null 💀^</p^> >> !pattern!.html
echo ^</footer^> >> !pattern!.html

echo ^</html^> >> !pattern!.html



echo.
echo Generating pro pattern HTML...
echo.
echo ^<html^> >> !pro!.html
echo ^<head^> >> !pro!.html
echo ^<title^>AC^:NH Pattern Dump Index - PRO Patterns^</title^> >> !pro!.html
echo ^<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico"^> >> !pro!.html
echo ^<style^> >> !pro!.html
echo ^.grid-container ^{ >> !pro!.html
echo   display^: grid^; >> !pro!.html
echo   grid-template-columns^: auto auto auto auto auto auto^; >> !pro!.html
echo   gap^: 10px^; >> !pro!.html
echo   background-color^: ^#2196F3^; >> !pro!.html
echo   padding^: 10px^; >> !pro!.html
echo ^} >> !pro!.html
echo ^.grid-container > div { >> !pro!.html
echo   background-color^: rgba^(255^, 255^, 255^, 0.8^)^; >> !pro!.html
echo   border^: 1px solid black^; >> !pro!.html
echo   text-align^: center^; >> !pro!.html
echo   font-size^: 10px^; >> !pro!.html
echo ^} >> !pro!.html
echo .imgfloat ^{ >> !pro!.html
echo   z-index: 1^; >> !pro!.html
echo   position: absolute^; >> !pro!.html
echo   top: 10px^; >> !pro!.html
echo   left: 10px^; >> !pro!.html
echo ^} >> !pro!.html
echo ^#footer ^{ >> !pro!.html
echo   position^: fixed^; >> !pro!.html
echo   bottom^: 0^; >> !pro!.html
echo   width^: 100^%^; >> !pro!.html
echo   height^: 4rem^; >> !pro!.html
echo ^} >> !pro!.html
echo body ^{ >> !pro!.html
echo    background-color^: ^#2196F3^; >> !pro!.html
echo    background-image^: url("images/bg.png")^; >> !pro!.html
echo    background-position^: right bottom^; >> !pro!.html
echo    background-repeat^: no-repeat^; >> !pro!.html
echo ^} >> !pro!.html
echo ^</style^> >> !pro!.html

echo ^<script^> >> !pro!.html
echo window.onload ^= displayImage^; >> !pro!.html
echo var imagesArray ^= ^["1.png"^, "2.png"^, "3.png"^, "4.png"^, "5.png"^, "6.png"^]^; >> !pro!.html
echo function displayImage^(^)^{ >> !pro!.html
echo     var num ^= Math.floor^(Math.random^(^) ^* 6^)^; >> !pro!.html
echo     document.getElementById^("villager"^).src ^= 'images/'^+ imagesArray^[num^]^; >> !pro!.html
echo ^} >> !pro!.html
echo ^</script^> >> !pro!.html

echo ^</head^> >> !pro!.html

echo ^<body style="background-color:#ffd4ee"^> >> !pro!.html

echo ^<h1 style="text-align: center; font-family: helvetica"^>^<img src="images/favicon.png" width="24" height="24"/^>AC^:NH Pattern Dump Index^</h1^> >> !pro!.html
echo ^<h2 style="text-align: center"^>PRO Patterns^</h2^> >> !pro!.html

echo ^<img src="" width="96" height="96" id="villager" alt="VillagerImg" class="imgfloat" title="A cutie^!"^> >> !pro!.html

echo ^<div class="grid-container"^> >> !pro!.html

set /a count = 0
for %%p in ("!prodir!\*.png") do (
	set /a count += 1

	set "str=%%p"
    set str=!str:~0,-4!
    set "nhdstr=!str!.nhpd"
    set "txtstr=!str!.txt"

	echo ^<div^> >> !pro!.html
	echo ^<a href="!nhdstr!"^>^<img src="%%p" width="96" height="96" /^>^</a^> >> !pro!.html
	set "strl=%%p"
    set strl=!strl:~4,-4!
	echo ^<p style="font-family: helvetica; font-size: 8;"^>!strl!^</p^> >> !pro!.html

	for /F "usebackq delims=" %%y in ("!txtstr!") do (
		echo ^<strong^>^<p style="font-family: helvetica; font-size: 11;"^>%%y^</p^>^</strong^> >> !pro!.html
	)

	echo ^</div^> >> !pro!.html

	echo Adding PRO pattern^: !count! of !cntpro!
)

echo ^</div^> >> !pro!.html

echo ^<br^>^<br^>^<br^> >> !pro!.html

echo ^</body^> >> !pro!.html

echo ^<footer id="footer"^> >> !pro!.html
echo ^<p style="font-family: helvetica"^>Page/Script by Josh ^(Lotte^) 👨‍💻^<a href="https://github.com/lottehime"^>@lottehime^</a^> ^& 🐦^<a href="https://twitter.com/lotte_hime"^>@lotte_hime^</a^>^<br^>Level any complaints to: /dev/null 💀^</p^> >> !pro!.html
echo ^</footer^> >> !pro!.html

echo ^</html^> >> !pro!.html

echo Launching page...
start index.html