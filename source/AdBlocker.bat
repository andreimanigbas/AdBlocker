title Drei
@echo off
goto CheckAdmin

:CheckAdmin
cls
    net session >nul 2>&1
    if %errorLevel% == 0 (
		mode con:cols=48 lines=5
		color 0A
		echo.
		echo.
        echo     Admin permission granted. Redirecting...
		TIMEOUT /t 3 > NUL
		GOTO MainMenu
    ) else (
		mode con:cols=48 lines=5
		color 04
		echo.
		echo.
        echo   You must run this program as Administrator.
		TIMEOUT /t 5 > NUL
		EXIT
    )

    pause >nul

:MainMenu
color F1
cls
mode con:cols=48 lines=20
echo.
echo       ________ _____________________.___ 
echo       \______ \\______   \_   _____/^|   ^|
echo        ^|    ^|  \^|       _/^|    __)_ ^|   ^|
echo        ^|    `   \    ^|   \^|        \^|   ^|
echo       /_______  /____^|_  /_______  /^|___^|
echo               \/       \/        \/      
echo.
echo.
echo -----------------------------------------------
echo           Remove the annoying ads!
echo -----------------------------------------------
echo.
echo.           1 - Block ads
echo.           2 - Unblock ads
echo.           3 - Exit
echo.
SET /P choice=Enter number: 
IF %choice%==1 GOTO Block
IF %choice%==2 GOTO Unblock
IF %choice%==3 exit

:Block
color FA
cls
wmic nicconfig where (IPEnabled=TRUE) call SetDNSServerSearchOrder ("176.103.130.130", "176.103.130.131") > NUL
echo.
echo.
echo      ,---,                                     
echo    .'  .' `\                                   
echo  ,---.'     \    ,---.        ,---,            
echo  ^|   ^|  .`\  ^|  '   ,'\   ,-^+-. /  ^|           
echo  :   : ^|  '  ^| /   /   ^| ,--.'^|'   ^|   ,---.   
echo  ^|   ' '  ;  :.   ; ,. :^|   ^|  ,"' ^|  /     \  
echo  '   ^| ;  .  ^|'   ^| ^|: :^|   ^| /  ^| ^| /    /  ^| 
echo  ^|   ^| :  ^|  ''   ^| .; :^|   ^| ^|  ^| ^|.    ' / ^| 
echo  '   : ^| /  ; ^|   :    ^|^|   ^| ^|  ^|/ '   ;   /^| 
echo  ^|   ^| '` ,/   \   \  / ^|   ^| ^|--'  '   ^|  / ^| 
echo  ;   :  .'      `----'  ^|   ^|/      ^|   :    ^| 
echo  ^|   ,.'                '---'        \   \  /  
echo  '---'                                `----'  
echo.
TIMEOUT /t 4 > NUL
GOTO MainMenu

:Unblock
color F4
cls
wmic nicconfig where (IPEnabled=TRUE) call SetDNSServerSearchOrder () > NUL
echo.
echo.
echo      ,---,                                     
echo    .'  .' `\                                   
echo  ,---.'     \    ,---.        ,---,            
echo  ^|   ^|  .`\  ^|  '   ,'\   ,-^+-. /  ^|           
echo  :   : ^|  '  ^| /   /   ^| ,--.'^|'   ^|   ,---.   
echo  ^|   ' '  ;  :.   ; ,. :^|   ^|  ,"' ^|  /     \  
echo  '   ^| ;  .  ^|'   ^| ^|: :^|   ^| /  ^| ^| /    /  ^| 
echo  ^|   ^| :  ^|  ''   ^| .; :^|   ^| ^|  ^| ^|.    ' / ^| 
echo  '   : ^| /  ; ^|   :    ^|^|   ^| ^|  ^|/ '   ;   /^| 
echo  ^|   ^| '` ,/   \   \  / ^|   ^| ^|--'  '   ^|  / ^| 
echo  ;   :  .'      `----'  ^|   ^|/      ^|   :    ^| 
echo  ^|   ,.'                '---'        \   \  /  
echo  '---'                                `----'  
echo.
TIMEOUT /t 4 > NUL
GOTO MainMenu