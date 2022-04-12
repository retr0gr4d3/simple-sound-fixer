@echo off  

if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)   
net stop audiosrv    
pause    
net stop AudioEndpointBuilder
pause    
net start AudioEndpointBuilder
pause    
net start audiosrv    
pause
