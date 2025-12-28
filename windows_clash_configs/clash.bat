@echo off
:: 设置代理地址和端口 默认不用tun模式，只启动系统代理
set PROXY_HOST=127.0.0.1
set PROXY_PORT=7890


reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /t REG_SZ /d "%PROXY_HOST%:%PROXY_PORT%" /f

:: 启动 mihomo，这里假设你的配置文件在当前目录，exe 名字叫 mihomo.exe
.\mihomo-windows-amd64.exe -d .

taskkill /F /IM mihomo-windows-amd64.exe >nul 2>&1
:: 关闭系统代理
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0 /f >nul

pause