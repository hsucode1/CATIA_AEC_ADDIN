
@echo off
cd /d %~dp0
git add .
git commit -m "%date% %time%"
git push 
pause
