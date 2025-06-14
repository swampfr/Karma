
@echo off
chcp 65001
:main
cls
title Karma 
mode 85,25
echo [0;31m
type banner.txt
echo           [0;31m┏━━━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━━━━━━━━━━━┓
echo           [0;31m┃     [0;37mIP TOOLS[0;31m      ┃    [0;37mDISCORD TOOLS[0;31m    ┃       [0;37mEXTRA[0;31m         ┃ 
echo           [0;31m┣━━━━━━━━━━━━━━━━━━━╋━━━━━━━━━━━━━━━━━━━━━╋━━━━━━━━━━━━━━━━━━━━━┫
echo           [0;31m┃ [[0;37m01[0;31m] PINGER       ┃ [[0;37m06[0;31m] TOKEN INFO     ┃ [[0;37m11[0;31m] RAT TOOL       ┃
echo           [0;31m┃ [[0;37m02[0;31m] IP LOOKUP    ┃ [[0;37m07[0;31m] TOKEN LOGIN    ┃ [[0;37m12[0;31m] DOX TOOL       ┃
echo           [0;31m┃ [[0;37m03[0;31m] IP LOGGER    ┃ [[0;37m08[0;31m] WEBHOOK SPAMM  ┃ [[0;37m13[0;31m] SPAM BOT       ┃
echo           [0;31m┃ [[0;37m04[0;31m] DNS RESOLVER ┃ [[0;37m09[0;31m] WEBHOOK DEL    ┃ [[0;37m14[0;31m] DISCORD        ┃
echo           [0;31m┃ [[0;37m05[0;31m] PORT SCANNER ┃ [[0;37m10[0;31m] CHANNEL SPAMM  ┃ [[0;37m15[0;31m] EXIT           ┃
echo           [0;31m┃                   ┃                     ┃                     ┃
echo           [0;31m┗━━━━━━━━━━━━━━━━━━━┻━━━━━━━━━━━━━━━━━━━━━┻━━━━━━━━━━━━━━━━━━━━━┛
echo.
set /p input= Choice[0;31m:[0;37m 


if "%input%"=="1" goto pinger else

if "%input%"=="2" goto ip else

if "%input%"=="4" goto dns else

if "%input%"=="5" goto port else

if "%input%"=="11" goto rat else

if "%input%"=="13" goto bot else

if "%input%"=="12" goto dox else

if "%input%"=="3" goto log else

if "%input%"=="14" goto ds else

if "%input%"=="15" goto exit else

if "%input%"=="6" goto token else

if "%input%"=="7" goto login else

if "%input%"=="8" goto Webs else

if "%input%"=="9" goto Webdel else

if "%input%"=="10" goto Channel else


echo [0;31m[!] Invalid input. [0;37mPlease try again... [!]
timeout 2 >nul
goto main


:pinger
title Karma Pinger
set /p IP=[;31mIP[;37m: 
:ping
PING -n 1 %IP% | FIND "TTL=">nul
IF ERRORLEVEL 1 goto sub
IF NOT ERRORLEVEL 1 goto rcc
:sub
echo  [40;32m[KARMA] [40;36m[40;36m[%IP%][40;36m [JUST] [40;35m[SMACKED OFFLINE]
echo. 
goto ping
:rcc
echo  [40;32m[KARMA] [40;36m[40;36m[%IP%][40;36m [IS] [40;35m[ONLINE]
echo.
goto ping






:ip
title Karma Ip Lookup
cls
mode 50,20
echo.
echo.
echo [37m
echo           ┌──────────────────────────┐
echo           │ [31m╦╔═╗  ╦  ╔═╗╔═╗╦╔═╦ ╦╔═╗ [37m│
echo           │ [31m║╠═╝  ║  ║ ║║ ║╠╩╗║ ║╠═╝ [37m│
echo           │ [31m╩╩    ╩═╝╚═╝╚═╝╩ ╩╚═╝╩   [37m│
echo           └──────────────────────────┘
echo.
echo           [31m============================
echo           [97m Enter IP address to lookup
echo           [31m============================
echo [97m
set /p ip=═══3              
     

curl  https://ipinfo.io/%ip% 
echo ===========================
echo        %ip% INFO
echo ============================
pause >nul
goto main






:dns
echo.
echo Enter the DNS record type or domain to resolve (e.g., A, MX, domain.com)
set /p dns=domain: 

start https://mxtoolbox.com/SuperTool.aspx?action=%dns%&run=toolpage
pause >nul
goto main


:port
start pScan.exe
goto main


:rat
start https://github.com/quasar/Quasar
goto main


:bot
start spam.vbs
goto main


:dox
start Dox.exe
goto main

:log
start https://grabify.link
goto main


:ds
start https://discord.gg/rCf6sZGUAU
goto main


:token
title Token Info

set /p token=token: 

start https://discordtoken.vercel.app

goto main




:login
start https://chromewebstore.google.com/detail/discord-token-login/ealjoeebhfijfimofmecjcjcigmadcai?pli=1

goto main





:Webs
title Karma Webhook Spammer
echo.
set /p webhook= Enter Discord webhook URL for Message Sender: 
set /p message= Enter the message to send: 
set /p num_times= Enter the number of times to send the message: 

for /l %%n in (1,1,%num_times%) do (
    :: Send message to Discord webhook
    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"%message%\"}" %webhook%
echo [!] Spammed Webhook %%n
)

pause >nul
goto main



:Webdel
title Karma Webhook Deleter
                                                                         
set /p webhook_url=Enter Discord Webhook URL:

curl -X DELETE %webhook_url%

if %errorlevel% equ 0 (
     echo [0;34m[[0;37m![0;34m][0;37m Webhook remover succesfully at %TIME%.
)else ( 
   echo Failed to remove webhook at %TIME%.
   echo Error code: %errorlevel%
)
pause >nul
goto main








:Channel
title Karma Channel Spammer
echo.
set /p token=Enter your token: 
set /p channel_id=Enter channel ID: 
set /p message_content=Enter the message to send: 
set /p repeat_count=Enter message number: 

for /l %%i in (1, 1, %repeat_count%) do (
    curl -X POST -H "Authorization: %token%" -H "Content-Type: application/json" -d "{\"content\":\"%message_content%\"}" https://discord.com/api/v9/channels/%channel_id%/messages
)
pause >nul
goto main

