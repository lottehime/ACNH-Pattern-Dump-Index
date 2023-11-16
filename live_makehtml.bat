@rem Scripts and rips by Josh (Lotte) gh:@lottehime t:@lotte_hime
@echo off
title ACNH Pattern Dump Index Site Generator

setlocal enableextensions enabledelayedexpansion

call:audieASCII

:mainFunc

set /a count = 0
set /a cntpat = 0
set /a cntpro = 0
set /a cntpagemax = 96
set /a cntpage = 1
set /a countother = -1

set "patdir=pat"
set "prodir=pro"

set "index=index"
set "pattern=patterns"
set "pro=pro"

echo.
echo Removing old files . . .
echo.
echo Deleting index HTML file . . .
del !index!.html
echo.
echo Deleting pattern HTML file . . .
del !pattern!.html
echo.
echo Deleting PRO pattern HTML file . . .
del !pro!.html
timeout 1 >nul

echo.
echo Getting file totals . . .
for %%a in ("!patdir!\*.nhd") do ( set /a cntpat += 1 )
for %%b in ("!prodir!\*.nhpd") do ( set /a cntpro += 1 )
echo Normal Patterns^: !cntpat!
echo PRO Patterns^: !cntpro!
timeout 1 >nul

echo.
echo Generating HTML pages . . .
timeout 1 >nul

echo.
echo Generating index HTML . . .
timeout 1 >nul
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
echo   left^: 0^; >> !index!.html
echo   right^: 0^; >> !index!.html
echo   background-color^: rgba^(255^,255^,255^,0.7^)^; >> !index!.html
echo   width^: 100^%%^; >> !index!.html
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

echo ^<h1 style="text-align: center; font-family: roboto"^>^<img src="images/favicon.png" width="24" height="24"/^>AC^:NH Pattern Dump Index^</h1^> >> !index!.html
echo ^<h2 style="text-align: center; font-family: roboto"^>Normal ^& PRO Patterns^</h2^> >> !index!.html
echo ^<img src="images/loading.gif" style="display: none"^> >> !index!.html

echo ^<img src="images/1.png" width="96" height="96" id="villager" alt="VillagerImg" class="imgfloat" title="A cutie^!"^> >> !index!.html

echo ^<div class="grid-container"^> >> !index!.html

echo ^<div^> >> !index!.html
echo ^<a href="!pattern!.html" style="text-align: center; font-family: roboto"^>^<img src="images/pat.png" width="96" height="96"^>^<br^>Normal Patterns^</a^> >> !index!.html
echo ^</div^> >> !index!.html
echo ^<div^> >> !index!.html
echo ^<a href="!pro!.html" style="text-align: center; font-family: roboto"^>^<img src="images/pro.png" width="96" height="96"^>^<br^>PRO Patterns^</a^> >> !index!.html
echo ^</div^> >> !index!.html

echo ^</div^> >> !index!.html

echo ^<br^>^<br^>^<br^> >> !index!.html

echo ^</body^> >> !index!.html

echo ^<footer id="footer"^> >> !index!.html
echo ^<p style="font-family: roboto"^>Page/script by Josh ^(Lotte^) 👨‍💻^<a href="https://github.com/lottehime"^>@lottehime^</a^> ^& 🐦^<a href="https://twitter.com/lotte_hime"^>@lotte_hime^</a^>^<br^>Level any complaints to: /dev/null 💀^</p^> >> !index!.html
echo ^</footer^> >> !index!.html

echo ^</html^> >> !index!.html



echo.
echo Generating normal pattern HTML . . .
timeout 1 >nul
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
echo   left^: 0^; >> !pattern!.html
echo   right^: 0^; >> !pattern!.html
echo   background-color^: rgba^(255^,255^,255^,0.7^)^; >> !pattern!.html
echo   width^: 100^%%^; >> !pattern!.html
echo   height^: 4rem^; >> !pattern!.html
echo ^} >> !pattern!.html
echo body ^{ >> !pattern!.html
echo    background-color^: ^#2196F3^; >> !pattern!.html
echo    background-image^: url("images/bg.png")^; >> !pattern!.html
echo    background-position^: right bottom^; >> !pattern!.html
echo    background-repeat^: no-repeat^; >> !pattern!.html
echo ^} >> !pattern!.html
echo ^#load^{ >> !pattern!.html
echo     width^:100^%%^; >> !pattern!.html
echo     height^:100^%%^; >> !pattern!.html
echo     position^:fixed^; >> !pattern!.html
echo     left^: 0^;  >> !pattern!.html
echo     right^: 0^;  >> !pattern!.html
echo     top^: 0^; >> !pattern!.html
echo     z-index^:9999^; >> !pattern!.html
echo     background^:url("images/loading.gif") no-repeat center center rgba^(0^,0^,0^,0.9^)^; >> !pattern!.html
echo     background-size^: 320px 255px^; >> !pattern!.html
echo ^} >> !pattern!.html
echo span.product a img ^{ >> !pattern!.html
echo     display^: none^; >> !pattern!.html
echo     position^: fixed^; >> !pattern!.html
echo     right^: 8px^; >> !pattern!.html
echo     top^: 8px^; >> !pattern!.html
echo ^} >> !pattern!.html
echo span.product a ^{ >> !pattern!.html
echo     display^: inline-block^; >> !pattern!.html
echo     position^: relative^; >> !pattern!.html
echo ^} >> !pattern!.html
echo span.product a img^{ >> !pattern!.html
echo     display^: none^; >> !pattern!.html
echo ^} >> !pattern!.html
echo span.product a^:hover img^{ >> !pattern!.html
echo     display^: inherit^; >> !pattern!.html
echo     z-index^:9999^; >> !pattern!.html
echo ^} >> !pattern!.html
echo ^</style^> >> !pattern!.html

echo ^<script^> >> !pattern!.html

echo window.onload ^= displayImage^; >> !pattern!.html
echo var imagesArray ^= ^["1.png"^, "2.png"^, "3.png"^, "4.png"^, "5.png"^, "6.png"^]^; >> !pattern!.html
echo function displayImage^(^)^{ >> !pattern!.html
echo     var num ^= Math.floor^(Math.random^(^) ^* 6^)^; >> !pattern!.html
echo     document.getElementById^("villager"^).src ^= 'images/'^+ imagesArray^[num^]^; >> !pattern!.html
echo ^} >> !pattern!.html

echo function showPages^(id^)^{ >> !pattern!.html
echo     displayImage^(^)^; >> !pattern!.html
echo     var totalNumberOfPages ^= !cntpat!^; >> !pattern!.html
echo     for^(var i^=0^; i^<^=totalNumberOfPages^; i^+^+^)^{  >> !pattern!.html
echo       var items ^= document.getElementsByClassName^('content'^+i^)^;  >> !pattern!.html
echo       Array.prototype.forEach.call^(items^, function^(item^) ^{ >> !pattern!.html
echo       item.style.display^='none'^; >> !pattern!.html
echo       ^}^)^; >> !pattern!.html
echo     ^} >> !pattern!.html
echo     var itemids ^= document.getElementsByClassName^('content'^+id^)^; >> !pattern!.html
echo     Array.prototype.forEach.call^(itemids^, function^(itemid^) ^{ >> !pattern!.html
echo     itemid.style.display^='block'^; >> !pattern!.html
echo     ^}^)^; >> !pattern!.html
echo ^} >> !pattern!.html
echo document.addEventListener^('DOMContentLoaded'^, function^(^) ^{ >> !pattern!.html
echo    showPages^(1^)^; >> !pattern!.html
echo ^}^, false^)^; >> !pattern!.html

echo function goBack^(^)^{ >> !pattern!.html
echo 	window.location.assign^("index.html"^)^; >> !pattern!.html
echo ^} >> !pattern!.html

echo ^</script^> >> !pattern!.html

echo ^</head^> >> !pattern!.html

echo ^<footer id="footer"^> >> !pattern!.html
echo ^<p style="font-family: roboto"^>Page/script by Josh ^(Lotte^) 👨‍💻^<a href="https://github.com/lottehime"^>@lottehime^</a^> ^& 🐦^<a href="https://twitter.com/lotte_hime"^>@lotte_hime^</a^>^<br^>Level any complaints to: /dev/null 💀^</p^> >> !pattern!.html
echo ^</footer^> >> !pattern!.html

echo ^<body style="background-color:#ffd4ee"^> >> !pattern!.html

echo ^<div id="load"^> >> !pattern!.html
echo   ^<br^>^<br^>^<br^> >> !pattern!.html
echo   ^<p style="text-align: center; font-family: roboto; font-size: 48; color: ^#FFFFFF"^>Loading !cntpat! patterns.^<br^>Please give Orville a moment...^</p^> >> !pattern!.html
echo ^</div^> >> !pattern!.html

echo ^<div id="contents"^> >> !pattern!.html

echo ^<h1 style="text-align: center; font-family: roboto"^>^<img src="images/favicon.png" width="24" height="24"/^>AC^:NH Pattern Dump Index^</h1^> >> !pattern!.html
echo ^<h2 style="text-align: center; font-family: roboto"^>Normal Patterns^</h2^> >> !pattern!.html

echo ^<img src="images/1.png" width="96" height="96" id="villager" alt="VillagerImg" class="imgfloat" onclick="goBack()" title="Click to go back to the main page."^> >> !pattern!.html

echo ^<div class="grid-container"^> >> !pattern!.html

for %%i in ("!patdir!\*.nhd") do (
	set /a count += 1
	set /a countother +=1

	IF !countother! EQU !cntpagemax! (
		set /a cntpage += 1
		set /a countother = 0
	)

	set "str=%%i"
    set str=!str:~0,-4!
    set "pngstr=!str!.png"
    set "txtstr=!str!.txt"
    set "qrstr=!str!.QR.png"

	echo ^<div style="display:none" class="content!cntpage!"^> >> !pattern!.html
	echo ^<a href="%%i"^>^<img src="!pngstr!" width="64" height="64" /^>^</a^> >> !pattern!.html
	echo ^<br^>^<span class="product"^>^<a href="#"^>^<img src="!qrstr!" alt="" onload="this.width/=2;this.onload=null;"/^>QR Code^</a^>^</span^> >> !pattern!.html
	set "strl=%%i"
    set strl=!strl:~4,-4!
	echo ^<p style="font-family: roboto; font-size: 8;"^>!strl!^</p^> >> !pattern!.html

	for /F "usebackq delims=" %%x in ("!txtstr!") do (
		echo ^<strong^>^<p style="font-family: roboto; font-size: 11;"^>%%x^</p^>^</strong^> >> !pattern!.html
	)

	echo ^</div^> >> !pattern!.html

	echo Adding pattern^: !count! of !cntpat!
)

echo ^</div^> >> !pattern!.html

echo ^<br^> >> !pattern!.html
echo ^<div style="text-align: center"^>  >> !pattern!.html
for /l %%d in (1,1,!cntpage!) do (
	echo ^<strong^>^<a href="#%%d" onclick="showPages('%%d')" style="font-family: roboto; font-size: 12;"^>%%d^</a^>^</strong^> >> !pattern!.html
)
echo ^</div^> >> !pattern!.html
echo ^<br^>^<br^>^<br^>^<br^> >> !pattern!.html

echo ^</div^> >> !pattern!.html

echo ^</body^> >> !pattern!.html

echo ^<script^> >> !pattern!.html
echo document.onreadystatechange ^= function ^(^) ^{ >> !pattern!.html
echo   var state ^= document.readyState^; >> !pattern!.html
echo   if ^(state ^=^= 'interactive'^) ^{ >> !pattern!.html
echo        document.getElementById^('contents'^).style.visibility^="hidden"^; >> !pattern!.html
echo   ^} else if ^(state ^=^= 'complete'^) ^{ >> !pattern!.html
echo       setTimeout^(function^(^)^{ >> !pattern!.html
echo          document.getElementById^('interactive'^)^; >> !pattern!.html
echo          document.getElementById^('load'^).style.visibility^="hidden"^; >> !pattern!.html
echo          document.getElementById^('contents'^).style.visibility^="visible"^; >> !pattern!.html
echo       ^}^,1000^)^; >> !pattern!.html
echo   ^} >> !pattern!.html
echo ^} >> !pattern!.html
echo ^</script^> >> !pattern!.html

echo ^</html^> >> !pattern!.html



echo.
echo Generating pro pattern HTML . . .
timeout 1 >nul
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
echo   left^: 0^; >> !pro!.html
echo   right^: 0^; >> !pro!.html
echo   background-color^: rgba^(255^,255^,255^,0.7^)^; >> !pro!.html
echo   width^: 100^%%^; >> !pro!.html
echo   height^: 4rem^; >> !pro!.html
echo ^} >> !pro!.html
echo body ^{ >> !pro!.html
echo    background-color^: ^#2196F3^; >> !pro!.html
echo    background-image^: url("images/bg.png")^; >> !pro!.html
echo    background-position^: right bottom^; >> !pro!.html
echo    background-repeat^: no-repeat^; >> !pro!.html
echo ^} >> !pro!.html
echo ^#load^{ >> !pro!.html
echo     width^:100^%%^; >> !pro!.html
echo     height^:100^%%^; >> !pro!.html
echo     position^:fixed^; >> !pro!.html
echo     left^: 0^;  >> !pro!.html
echo     right^: 0^;  >> !pro!.html
echo     top^: 0^; >> !pro!.html
echo     z-index^:9999^; >> !pro!.html
echo     background^:url("images/loading.gif") no-repeat center center rgba^(0^,0^,0^,0.9^)^; >> !pro!.html
echo     background-size^: 320px 255px^; >> !pro!.html
echo ^} >> !pro!.html
echo span.product a img ^{ >> !pro!.html
echo     display^: none^; >> !pro!.html
echo     position^: fixed^; >> !pro!.html
echo     right^: 8px^; >> !pro!.html
echo     top^: 8px^; >> !pro!.html
echo ^} >> !pro!.html
echo span.product a ^{ >> !pro!.html
echo     display^: inline-block^; >> !pro!.html
echo     position^: relative^; >> !pro!.html
echo ^} >> !pro!.html
echo span.product a img^{ >> !pro!.html
echo     display^: none^; >> !pro!.html
echo ^} >> !pro!.html
echo span.product a^:hover img^{ >> !pro!.html
echo     display^: inherit^; >> !pro!.html
echo     z-index^:9999^; >> !pro!.html
echo ^} >> !pro!.html
echo ^</style^> >> !pro!.html

echo ^<script^> >> !pro!.html

echo window.onload ^= displayImage^; >> !pro!.html
echo var imagesArray ^= ^["1.png"^, "2.png"^, "3.png"^, "4.png"^, "5.png"^, "6.png"^]^; >> !pro!.html
echo function displayImage^(^)^{ >> !pro!.html
echo     var num ^= Math.floor^(Math.random^(^) ^* 6^)^; >> !pro!.html
echo     document.getElementById^("villager"^).src ^= 'images/'^+ imagesArray^[num^]^; >> !pro!.html
echo ^} >> !pro!.html

echo function showPages^(id^)^{   >> !pro!.html
echo     displayImage^(^)^; >> !pro!.html
echo     var totalNumberOfPages ^= !cntpro!^;  >> !pro!.html
echo     for^(var i^=0^; i^<^=totalNumberOfPages^; i^+^+^)^{  >> !pro!.html
echo       var items ^= document.getElementsByClassName^('content'^+i^)^;  >> !pro!.html
echo       Array.prototype.forEach.call^(items^, function^(item^) ^{ >> !pro!.html
echo       item.style.display^='none'^; >> !pro!.html
echo       ^}^)^; >> !pro!.html
echo     ^} >> !pro!.html
echo     var itemids ^= document.getElementsByClassName^('content'^+id^)^; >> !pro!.html
echo     Array.prototype.forEach.call^(itemids^, function^(itemid^) ^{ >> !pro!.html
echo     itemid.style.display^='block'^; >> !pro!.html
echo     ^}^)^; >> !pro!.html
echo ^} >> !pro!.html
echo document.addEventListener^('DOMContentLoaded'^, function^(^) ^{ >> !pro!.html
echo    showPages^(1^)^; >> !pro!.html
echo ^}^, false^)^; >> !pro!.html

echo function goBack^(^)^{ >> !pro!.html
echo 	window.location.assign^("index.html"^)^; >> !pro!.html
echo ^} >> !pro!.html

echo ^</script^> >> !pro!.html

echo ^</head^> >> !pro!.html

echo ^<footer id="footer"^> >> !pro!.html
echo ^<p style="font-family: roboto"^>Page/script by Josh ^(Lotte^) 👨‍💻^<a href="https://github.com/lottehime"^>@lottehime^</a^> ^& 🐦^<a href="https://twitter.com/lotte_hime"^>@lotte_hime^</a^>^<br^>Level any complaints to: /dev/null 💀^</p^> >> !pro!.html
echo ^</footer^> >> !pro!.html

echo ^<body style="background-color:#ffd4ee"^> >> !pro!.html

echo ^<div id="load"^> >> !pro!.html
echo   ^<br^>^<br^>^<br^> >> !pro!.html
echo   ^<p style="text-align: center; font-family: roboto; font-size: 48; color: ^#FFFFFF"^>Loading !cntpro! PRO patterns.^<br^>Please give Orville a moment...^</p^> >> !pro!.html
echo ^</div^> >> !pro!.html

echo ^<div id="contents"^> >> !pro!.html

echo ^<h1 style="text-align: center; font-family: roboto"^>^<img src="images/favicon.png" width="24" height="24"/^>AC^:NH Pattern Dump Index^</h1^> >> !pro!.html
echo ^<h2 style="text-align: center; font-family: roboto"^>PRO Patterns^</h2^> >> !pro!.html

echo ^<img src="images/1.png" width="96" height="96" id="villager" alt="VillagerImg" class="imgfloat" onclick="goBack()" title="Click to go back to the main page."^> >> !pro!.html

echo ^<div class="grid-container"^> >> !pro!.html

set /a count = 0
set /a countother = -1
set /a cntpage = 1
for %%p in ("!prodir!\*.nhpd") do (
	set /a count += 1
	set /a countother +=1

	IF !countother! EQU !cntpagemax! (
		set /a cntpage += 1
		set /a countother = 0
	)

	set "str=%%p"
    set str=!str:~0,-5!
    set "pngstr=!str!.png"
    set "txtstr=!str!.txt"
    set "qrstr=!str!.QR.png"

	echo ^<div style="display:none" class="content!cntpage!"^> >> !pro!.html
	echo ^<a href="%%p"^>^<img src="!pngstr!" width="96" height="96" /^>^</a^> >> !pro!.html
	echo ^<br^>^<span class="product"^>^<a href="#"^>^<img src="!qrstr!" alt="" onload="this.width/=2;this.onload=null;"/^>QR Code^</a^>^</span^> >> !pro!.html
	set "strl=%%p"
    set strl=!strl:~4,-4!
	echo ^<p style="font-family: roboto; font-size: 8;"^>!strl!^</p^> >> !pro!.html

	for /F "usebackq delims=" %%y in ("!txtstr!") do (
		echo ^<strong^>^<p style="font-family: roboto; font-size: 11;"^>%%y^</p^>^</strong^> >> !pro!.html
	)

	echo ^</div^> >> !pro!.html

	echo Adding PRO pattern^: !count! of !cntpro!
)

echo ^</div^> >> !pro!.html

echo ^<br^> >> !pro!.html
echo ^<div style="text-align: center"^>  >> !pro!.html
for /l %%d in (1,1,!cntpage!) do (
	echo ^<strong^>^<a href="#%%d" onclick="showPages('%%d')" style="font-family: roboto; font-size: 12;"^>%%d^</a^>^</strong^> >> !pro!.html
)
echo ^</div^> >> !pro!.html
echo ^<br^>^<br^>^<br^>^<br^> >> !pro!.html

echo ^</div^> >> !pro!.html

echo ^</body^> >> !pro!.html

echo ^<script^> >> !pro!.html
echo document.onreadystatechange ^= function ^(^) ^{ >> !pro!.html
echo   var state ^= document.readyState^; >> !pro!.html
echo   if ^(state ^=^= 'interactive'^) ^{ >> !pro!.html
echo        document.getElementById^('contents'^).style.visibility^="hidden"^; >> !pro!.html
echo   ^} else if ^(state ^=^= 'complete'^) ^{ >> !pro!.html
echo       setTimeout^(function^(^)^{ >> !pro!.html
echo          document.getElementById^('interactive'^)^; >> !pro!.html
echo          document.getElementById^('load'^).style.visibility^="hidden"^; >> !pro!.html
echo          document.getElementById^('contents'^).style.visibility^="visible"^; >> !pro!.html
echo       ^}^,1000^)^; >> !pro!.html
echo   ^} >> !pro!.html
echo ^} >> !pro!.html
echo ^</script^> >> !pro!.html

echo ^</html^> >> !pro!.html

echo.
echo Launching page . . .
timeout 2 >nul
start index.html
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