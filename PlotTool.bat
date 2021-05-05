@echo off & title Chia K32 PlotDisk Tool v1.0 欢迎加入交流群 811518593 & setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "Plot_Config.ini"^| find /i "="') do set %%i
echo [1;33m开始执行P盘任务
echo [1;31m===================================
echo [1;36m当前 Chia Blockchain 版本号：[1;32m%VER%
echo [1;36m并行数量：[1;32m%COUNT%
echo [1;36m队列数量：[1;32m%NUM%
echo.
Set /a N1 = %COUNT%*%THR%
Set /a N2 = %COUNT%*%RAM%/1024
echo [1;36m最大占用线程：[1;32m%N1%    
echo [1;36m最大占用内存：[1;32m%N2% GiB
echo.
echo [1;36m缓存目录：[1;32m%TMPDIR%
echo [1;36m输出目录：[1;32m%FINDIR%
echo [1;31m=================================== 

::Start Plot Command
set CHIAPATH=%LocalAppData%\chia-blockchain\app-%VER%\resources\app.asar.unpacked\daemon\chia.exe
set COMMAND=plots create -k 32 -f %FPK% -p %PPK% -b %RAM% -r %THR% -u %BUK% -t %TMPDIR% -d %FINDIR% -n %NUM%
:start
set /a n+=1
if %n% leq %COUNT% (
		echo [1;36m正在进行并行P盘的[1;33m第%n%次[1;36m任务;
		start "任务%n%，开始时间:%date:~5,5% %time:~0,5%" cmd /K %CHIAPATH% %COMMAND%
		::echo %CHIAPATH%
		::echo %COMMAND%
		if "%n%"=="%COUNT%" goto End
		echo.
		echo [1;31m请等待[1;33m%TIME%秒[1;31m准备开始执行下一个P盘任务
		echo.
		echo [1;36m欢迎加入Chia开源技术交流群 811518593
		ping -n %TIME% 127.1 >nul
		cls
		goto start)
:End
endlocal
echo.
echo.
echo [1;32m 执行完毕,该窗口可以关闭了
echo.
echo [1;31m===================================
echo [1;36m欢迎加入Chia开源技术交流群 [1;33m811518593
echo [1;36m请关注Bilibili元気矿工获取更多关于Chia技术和资讯
echo [1;36mhttps://space.bilibili.com/197382125
echo [1;33m！！！！祝大家爆块！！！！
echo [1;31m===================================
pause
