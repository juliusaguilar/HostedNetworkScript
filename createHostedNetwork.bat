@echo off
color 0a
title Create New Hosted Network
set/p networkName=Network Name (SSID): 
set/p password=Password (> 8 characters):

echo.

netsh wlan set hostednetwork mode=allow ssid=%networkName% key=%password% keyUsage=persistent

pause >nul 

netsh wlan start hostednetwork

pause

exit
