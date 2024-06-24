@echo off
echo 正在拉取最新代码
setlocal enabledelayedexpansion

:: 拉取最新代码
git pull origin master

:: 提示用户输入提交消息
set /p commitMessage=Enter the commit message:

:: 检查是否有输入
if "!commitMessage!"=="" (
    echo Commit message is required.
    exit /b 1
)

:: 添加更改到暂存区
git add .

:: 提交更改
git commit -m "!commitMessage!"

:: 推送到远程仓库
git push origin master

echo Done.
pause
