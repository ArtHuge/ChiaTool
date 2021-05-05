::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDZVTxaDOVeeA6YX/Ofr08SCtQ0wXeEtd5zU3KDOCeMc5AXXcIJt0HVI2PwFAh9XaQHrP1904T8S+DTLZpfN4VqodkGE50w1CWBnuDGHwiI4b7M=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF65
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZks0
::ZQ05rAF9IBncCkqN+0xwdVsFAlTi
::ZQ05rAF9IAHYFVzEqQITIBJVDDSOM3/6MroT5Ig=
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQITIBJVDIFe3O1g9jP2CG4HIG5dZsvItWXhvM+Di+XbcbhGsxaE
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATEcafTrsujy/tdubx/Zg==
::ZQ0/vhVqMQ3MEVWAtB9wrf63ytR1u5Rlg2LZiA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRmn/EsxaJ6IrIJYzO1Q5jPgJ2whK2xSQw1FBbNqKdeOg+fu
::Zh4grVQjdCqDJHqM/UMMHB5HWDihNGK7RoUQ5/zP4OWL7EgFUYI=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off & title Chia K32 PlotDisk Tool v1.0 欢迎加入交流�?811518593 & setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "Plot_Config.ini"^| find /i "="') do set %%i
echo [1;33m开始执行P盘任�?
echo [1;31m===================================
echo [1;36m当前 Chia Blockchain 版本号：[1;32m%VER%
echo [1;36m并行数量�?[1;32m%COUNT%
echo [1;36m队列数量�?[1;32m%NUM%
echo.
Set /a N1 = %COUNT%*%THR%
Set /a N2 = %COUNT%*%RAM%/1024
echo [1;36m最大占用线程：[1;32m%N1%    
echo [1;36m最大占用内存：[1;32m%N2% GiB
echo.
echo [1;36m缓存目录�?[1;32m%TMPDIR%
echo [1;36m输出目录�?[1;32m%FINDIR%
echo [1;31m=================================== 

::Start Plot Command
set CHIAPATH=%LocalAppData%\chia-blockchain\app-%VER%\resources\app.asar.unpacked\daemon\chia.exe
set COMMAND=plots create -k 32 -f %FPK% -p %PPK% -b %RAM% -r %THR% -u %BUK% -t %TMPDIR% -d %FINDIR% -n %NUM%
:start
set /a n+=1
if %n% leq %COUNT% (
		echo [1;36m正在进行并行P盘的[1;33m�?n%�?[1;36m任务;
		start "任务%n%，开始时�?%date:~5,5% %time:~0,5%" cmd /K %CHIAPATH% %COMMAND%
		::echo %CHIAPATH%
		::echo %COMMAND%
		if "%n%"=="%COUNT%" goto End
		echo.
		echo [1;31m请等�?[1;33m%TIME%�?[1;31m准备开始执行下一个P盘任�?
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
echo [1;33m！！！！祝大家爆块！！！�?
echo [1;31m===================================
pause