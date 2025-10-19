@echo off
REM === 自動同步本地檔案到 GitHub ===
REM 取得目前日期時間，作為 commit 訊息
for /f "tokens=1-4 delims=/ " %%a in ("%date%") do (
    set today=%%a-%%b-%%c
)
for /f "tokens=1-2 delims=: " %%a in ("%time%") do (
    set now=%%a%%b
)
set commit_msg=Auto update on %today%_%now%

echo.
echo 🔄 開始同步到 GitHub...
git add .
git commit -m "%commit_msg%"
git push origin main

echo ✅ 同步完成！
pause
