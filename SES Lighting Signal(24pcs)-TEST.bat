@echo off

set AIC=121
color 0a
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║               Host Control Bit-Set OK                    ║
echo ║        Check Blue LED : ON     Red LED : OFF             ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -S 1:7:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 1:7:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)

FOR /L %%i IN (10,1,24) DO (
           sg_ses.exe -D Disk0%%i -S 1:7:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 1:7:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause
)
ping 127.0.0.1 -n 2 > null                  
)

cls

color 0c
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║               Host Control Bit-Clear OK                  ║
echo ║        Check Blue LED : ON     Red LED : OFF             ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -C 1:7:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 1:7:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO ( 
           sg_ses.exe -D Disk0%%i -C 1:7:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 1:7:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause
)
ping 127.0.0.1 -n 2 > null
)

cls

color 0a
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║              Host Control Bit-Set RSVD DEVICE            ║
echo ║          Check Blue LED : ON     Red LED : OFF           ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -S 1:6:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 1:6:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO (
           sg_ses.exe -D Disk0%%i -S 1:6:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 1:6:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause
)
ping 127.0.0.1 -n 2 > null
)

cls

color 0c
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║              Host Control Bit-Clear RSVD DEVICE          ║
echo ║          Check Blue LED : ON     Red LED : OFF           ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -C 1:6:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 1:6:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO ( 
           sg_ses.exe -D Disk0%%i -C 1:6:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 1:6:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)
   echo Check  Blue LED : ON      Red LED : OFF

cls

color 0a
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║              Host Control Bit-Set HOT SPARE              ║
echo ║          Check Blue LED : ON     Red LED : OFF           ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -S 1:5:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 1:5:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO (
           sg_ses.exe -D Disk0%%i -S 1:5:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 1:5:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)

cls

color 0c
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║              Host Control Bit-Clear HOT SPARE            ║
echo ║          Check Blue LED : ON     Red LED : OFF           ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -C 1:5:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 1:5:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO ( 
           sg_ses.exe -D Disk0%%i -C 1:5:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 1:5:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)

cls

color 0a
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║              Host Control Bit-Set CONS CHECK             ║
echo ║      Check Blue LED : ON     Red LED : Fast Blink        ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -S 1:4:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 1:4:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO (
           sg_ses.exe -D Disk0%%i -S 1:4:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 1:4:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)

cls

color 0c
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║              Host Control Bit-Clear CONS CHECK           ║
echo ║          Check Blue LED : ON     Red LED : OFF           ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -C 1:4:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 1:4:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO ( 
           sg_ses.exe -D Disk0%%i -C 1:4:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 1:4:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)

cls

color 0a
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║             Host Control Bit-Set IN CRIT ARRAY           ║
echo ║      Check Blue LED : ON     Red LED : Slow Blink        ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -S 1:3:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 1:3:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO (
           sg_ses.exe -D Disk0%%i -S 1:3:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 1:3:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)

cls

color 0c
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║             Host Control Bit-Clear IN CRIT ARRAY         ║
echo ║          Check Blue LED : ON     Red LED : OFF           ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -C 1:3:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 1:3:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO ( 
           sg_ses.exe -D Disk0%%i -C 1:3:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 1:3:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)

cls

color 0a
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║             Host Control Bit-Set IN FAILED ARRAY         ║
echo ║      Check Blue LED : ON     Red LED : Slow Blink        ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -S 1:2:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 1:2:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO (
           sg_ses.exe -D Disk0%%i -S 1:2:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 1:2:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)

cls

color 0c
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║             Host Control Bit-Clear IN FAILED ARRAY       ║
echo ║          Check Blue LED : ON     Red LED : OFF           ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -C 1:2:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 1:2:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO ( 
           sg_ses.exe -D Disk0%%i -C 1:2:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 1:2:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)

cls

color 0a
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║             Host Control Bit-Set REBUILD/REMP            ║
echo ║      Check Blue LED : ON     Red LED : Fast Blink        ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -S 1:1:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 1:1:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO (
           sg_ses.exe -D Disk0%%i -S 1:1:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 1:1:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)

cls

color 0c
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║             Host Control Bit-Clear REBUILD/REMP          ║
echo ║          Check Blue LED : ON     Red LED : OFF           ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -C 1:1:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 1:1:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO ( 
           sg_ses.exe -D Disk0%%i -C 1:1:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 1:1:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)

cls

color 0a
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║             Host Control Bit-Set R/R ABORT               ║
echo ║      Check Blue LED : ON     Red LED : Slow Blink        ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -S 1:0:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 1:0:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO (
           sg_ses.exe -D Disk0%%i -S 1:0:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 1:0:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)

cls

color 0c
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║             Host Control Bit-Clear R/R ABORT             ║
echo ║          Check Blue LED : ON     Red LED : OFF           ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -C 1:0:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 1:0:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO ( 
           sg_ses.exe -D Disk0%%i -C 1:0:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 1:0:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)

cls

color 0a
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║             Host Control Bit-Set ACTIVE                  ║
echo ║          Check Blue LED : ON     Red LED : OFF           ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -S 2:7:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 2:7:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO (
           sg_ses.exe -D Disk0%%i -S 2:7:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 2:7:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)

cls

color 0c
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║             Host Control Bit-Clear ACTIVE                ║
echo ║          Check Blue LED : ON     Red LED : OFF           ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -C 2:7:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 2:7:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO ( 
           sg_ses.exe -D Disk0%%i -C 2:7:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 2:7:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)
   echo Check  Blue LED : ON      Red LED : OFF

cls

color 0a
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║             Host Control Bit-Set DO NOT REMOVE           ║
echo ║          Check Blue LED : ON     Red LED : OFF           ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -S 2:6:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 2:6:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO (
           sg_ses.exe -D Disk0%%i -S 2:6:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 2:6:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)

cls

color 0c
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║             Host Control Bit-Clear DO NOT REMOVE         ║
echo ║          Check Blue LED : ON     Red LED : OFF           ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -C 2:6:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 2:6:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO ( 
           sg_ses.exe -D Disk0%%i -C 2:6:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 2:6:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)

cls

color 0a
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║             Host Control Bit-Set MISSING                 ║
echo ║          Check Blue LED : ON     Red LED : ON            ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -S 2:4:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 2:4:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO (
           sg_ses.exe -D Disk0%%i -S 2:4:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 2:4:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)

cls

color 0c
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║             Host Control Bit-Clear MISSING               ║
echo ║          Check Blue LED : ON     Red LED : OFF           ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -C 2:4:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 2:4:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO ( 
           sg_ses.exe -D Disk0%%i -C 2:4:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 2:4:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)

cls

color 0a
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║             Host Control Bit-Set INSERT                  ║
echo ║      Check Blue LED : ON     Red LED : Slow Blink        ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -S 2:3:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 2:3:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO (
           sg_ses.exe -D Disk0%%i -S 2:3:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 2:3:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)

cls

color 0c
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║             Host Control Bit-Clear INSERT                ║
echo ║          Check Blue LED : ON     Red LED : OFF           ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -C 2:3:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 2:3:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO ( 
           sg_ses.exe -D Disk0%%i -C 2:3:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 2:3:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)

cls

color 0a
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║             Host Control Bit-Set REMOVE                  ║
echo ║      Check Blue LED : ON     Red LED : Slow Blink        ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -S 2:2:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 2:2:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO (
           sg_ses.exe -D Disk0%%i -S 2:2:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 2:2:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)

cls

color 0c
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║             Host Control Bit-Clear REMOVE                ║
echo ║          Check Blue LED : ON     Red LED : OFF           ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -C 2:2:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 2:2:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO ( 
           sg_ses.exe -D Disk0%%i -C 2:2:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 2:2:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)

cls

color 0a
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║             Host Control Bit-Set IDENT                   ║
echo ║      Check Blue LED : Slow Blink     Red LED : OFF       ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -S 2:1:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 2:1:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO (
           sg_ses.exe -D Disk0%%i -S 2:1:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 2:1:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)

cls

color 0c
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║             Host Control Bit-Clear IDENT                 ║
echo ║          Check Blue LED : ON     Red LED : OFF           ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -C 2:1:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 2:1:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO ( 
           sg_ses.exe -D Disk0%%i -C 2:1:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 2:1:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)

cls

color 0a
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║             Host Control Bit-Set FAULT                   ║
echo ║          Check Blue LED : ON     Red LED : ON            ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -S 3:5:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 3:5:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO (
           sg_ses.exe -D Disk0%%i -S 3:5:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 3:5:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)

cls

color 0c
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║             Host Control Bit-Clear FAULT                 ║
echo ║         Check Blue LED : ON     Red LED : OFF            ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -C 3:5:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 3:5:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO ( 
           sg_ses.exe -D Disk0%%i -C 3:5:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 3:5:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)

cls

color 0a
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║             Host Control Bit-Set DEVICE OFF              ║
echo ║         Check Blue LED : OFF     Red LED : OFF           ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -S 3:4:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 3:4:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 3 > null
)
FOR /L %%i IN (10,1,24) DO (
           sg_ses.exe -D Disk0%%i -S 3:4:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 3:4:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 3 > null
)

cls

color 0c
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║             Host Control Bit-Clear DEVICE OFF            ║
echo ║         Check Blue LED : ON     Red LED : OFF            ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -C 3:4:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 3:4:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 3 > null
)
FOR /L %%i IN (10,1,24) DO ( 
           sg_ses.exe -D Disk0%%i -C 3:4:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 3:4:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 3 > null
)

pause
cls

color 0a
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║              Host Control Bit-Set Canister               ║
echo ║            Check POWER Blue LED : Slow Blink             ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

sg_ses --descriptor=EnclosureElement01 -S 1:7:1 SCSI0:7,%AIC%,0

cls

color 0c
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║             Host Control Bit-Clear Canister              ║
echo ║                Check POWER Blue LED : ON                 ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

sg_ses --descriptor=EnclosureElement01 -C 1:7:1 SCSI0:7,%AIC%,0

cls

color 0a
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║          Host Control Bit-Set Power Supply OFF           ║
echo ║         Check  Blue LED : OFF      Red LED : OFF         ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

sg_ses --descriptor=DiskPowerSupply -C 3:5:1 SCSI0:7,%AIC%,0

cls

color 0c
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║          Host Control Bit-Clear Power Supply OFF         ║
echo ║         Check  Blue LED : ON      Red LED : OFF          ║
echo ║                                                          ║
echo ╚═════════════════════════════╝

sg_ses --descriptor=DiskPowerSupply -S 3:5:1 SCSI0:7,%AIC%,0

cls

color 0a
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║             Host Control Bit-Set PRDFAIL                 ║
echo ║       Check Blue LED : ON     Red LED : Slow Blink       ║
echo ║                                                          ║
echo ╚═════════════════════════════╝
FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -S 0:6:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 0:6:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO (
           sg_ses.exe -D Disk0%%i -S 0:6:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 0:6:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==0 pause 
)
ping 127.0.0.1 -n 2 > null
)

cls

color 0c
echo
echo ╔═════════════════════════════╗
echo ║                                                          ║
echo ║             Host Control Bit-Clear PRDFAIL               ║
echo ║           Check Blue LED : ON     Red LED : OFF          ║
echo ║                                                          ║
echo ╚═════════════════════════════╝
FOR /L %%i IN (1,1,9) DO (
           sg_ses.exe -D Disk00%%i -C 0:6:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk00%%i -G 0:6:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)
FOR /L %%i IN (10,1,24) DO ( 
           sg_ses.exe -D Disk0%%i -C 0:6:1 SCSI0:7,%AIC%,0
           sg_ses.exe -D Disk0%%i -G 0:6:1 SCSI0:7,%AIC%,0 >LED.txt
    for /f %%a in (LED.txt) do ( 
    if %%a==1 pause 
)
ping 127.0.0.1 -n 2 > null
)

cls

echo====================Finish====================
pause

